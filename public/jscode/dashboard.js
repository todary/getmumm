$(function(){


    var link_active=false;

    $.each($(".nav-item a"),function(i,v){
        if($(this).attr("href")==location.href){
            $(this).parents(".nav-item").addClass("active");
            $(this).parents(".nav-item").addClass("start");
            $(this).parents(".nav-item").addClass("open");
            $(this).parents(".nav-item").find(".arrow").addClass("open");
            $(this).parents(".nav-item").find(".nav-link").append('<span class="selected"></span>');
            $(this).parents("li").addClass("active");
            link_active=true;
            return false;
        }
    });

    if(link_active==false){
        $.each($(".nav-item a"),function(i,v){

            var current_location=location.href;
            current_location= current_location.split("/");

            if(current_location.length==0)return;
            delete current_location[current_location.length-1];
            current_location=current_location.join("/");
            current_location = current_location.substring(0, current_location.length-1);

            if(current_location==$(this).attr("href")){
                $(this).parents(".nav-item").addClass("active");
                $(this).parents(".nav-item").addClass("start");
                $(this).parents(".nav-item").addClass("open");
                $(this).parents(".nav-item").find(".arrow").addClass("open");
                $(this).parents(".nav-item").find(".nav-link").append('<span class="selected"></span>');
                $(this).parents("li").addClass("active");

                link_active=true;
                return false;
            }
        });
    }

    if(link_active==false){
        var current_location=location.protocol + '//' + location.host + location.pathname;

        $.each($(".nav-item a"),function(i,v){
            if($(this).attr("href")==current_location){
                $(this).parents(".nav-item").addClass("active");
                $(this).parents(".nav-item").addClass("start");
                $(this).parents(".nav-item").addClass("open");
                $(this).parents(".nav-item").find(".arrow").addClass("open");
                $(this).parents(".nav-item").find(".nav-link").append('<span class="selected"></span>');
                $(this).parents("li").addClass("active");
                link_active=true;
                return false;
            }
        });
    }


    //ajax notfication
    if($(".notification_ul").length){

        var notfication_xhr;

        var notification_interval;


        $(window).on("blur focus", function(e) {

            var prevType = $(this).data("prevType");


            if (e.type=="focus") {

                notification_interval=setInterval(function(){

                    if(notfication_xhr){
                        notfication_xhr.abort();
                    }

                    var obj={};
                    obj._token=_token;
                    obj.user_id=$(".notification_ul").data("user_id");
                    obj.last_not_id=$(".not_item").first().attr("data-not_id");

                    notfication_xhr=$.ajax({
                        url:base_url2+"/check_new_notifications",
                        type:"POST",
                        data:obj,
                        success:function(data){
                            var ajax_data=JSON.parse(data);

                            var items="";
                            var items_count=0;

                            if(typeof (ajax_data.items)!="undefined"){
                                items=ajax_data.items;
                            }
                            if(typeof (ajax_data.items_count)!="undefined"){
                                items_count=ajax_data.items_count;
                            }

                            $(".notifications_items_body").prepend(items);

                            $(".icon-bell",$(".show_notification_ul")).css("color","#79869a");
                            if(items.length>0){
                                $(".icon-bell",$(".show_notification_ul")).css("color","#FFF");
                            }


                            $(".badge",$(".show_notification_ul")).html(parseInt($(".badge",$(".show_notification_ul")).html())+items_count);

                        }
                    });
                },60000);

            }
            else{
                clearInterval(notification_interval);
            }


            $(this).data("prevType", e.type);
        });

        $(".show_notification_ul").click(function () {
            $(".icon-bell",$(".show_notification_ul")).css("color","#79869a");
        });

    }


    $(".filter_menu").keyup(function(){

        var search_text=$(this).val().toLowerCase();

        if(search_text.length==0){
            $(".parent_nav_item").show();
        }

        $.each($(".parent_nav_item"),function () {

            if(!$(this).text().toLowerCase().includes(search_text)){
                $(this).hide();
            }
            else{
                $(this).show();
            }

        });


    });


    $.each($(".ckeditor"),function(key,val){

        $(this).attr("id","ck_"+key);

        CKEDITOR.replace( $(this).attr("id"), {
            filebrowserBrowseUrl: base_url2+'/browse',
            filebrowserUploadUrl: base_url2+'/upload',
        });
    });

    call_datatable=function(){
        //General functions
        if($('#cat_table').length > 0)
        {
            $('#cat_table').DataTable(
                {
                    // "lengthMenu": [[100, 200, 300, -1], [100, 200, 300, "All"]]
                });
        }
    };

    call_datatable();




    if($('.datatable_without_pagination').length > 0)
    {
        $('.datatable_without_pagination').DataTable({
            "paging": false
        });;
    }

    if($("input[type='date']").length){
        $("input[type='date']").datetimepicker({format: 'YYYY-MM-DD'});

    }

    if ($('#subscribe_table').length > 0)
    {
        $('#subscribe_table').DataTable(
            {
                "ajax": {
                    "url": base_url2+"/uploads/datatables_json/subscribe.json",
                    "type": "POST"
                }

            }
        );

    }

    call_order=function(){


        if ($(".reorder_items").length) {
            $("#sortable").sortable();
            $("#sortable").disableSelection();

            $(".reorder_items").click(function () {
                var items = [];
                var table_name;
                var field_name;

                $.each($("#sortable").children(), function (index, value) {
                    var item_id = $(this).data("itemid");
                    table_name = $(this).data("tablename");
                    field_name = $(this).data("fieldname");

                    var item_order = index;

                    items.push([item_id, item_order]);
                });

                if (typeof(field_name) == "undefined") {
                    field_name = "order";
                }


                var this_element = $(this);
                this_element.append("<img src='" + base_url + "img/ajax-loader.gif' class='ajax_loader_class' width='20'>");


                $.ajax({
                    url: base_url2 + '/reorder_items',
                    type: 'POST',
                    data: {'_token':_token, 'items': items, 'table_name': table_name , 'field_name':field_name},
                    success: function (data) {
                        $(".ajax_loader_class").hide();
                        var json_data = JSON.parse(data);


                        if (typeof (json_data) != "undefiend") {
                            if (typeof (json_data.success) != "undefined") {
                                this_element.html(" Re-Order " + json_data.success);
                                window.location.reload();
                            }

                            if (typeof (json_data.error) != "undefined") {
                                this_element.html(" Re-Order " + json_data.error);
                            }
                        }
                    }
                });


                return false;
            });
        }

    };

    call_order();



});