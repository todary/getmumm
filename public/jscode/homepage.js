jQuery(function ($) {

    $(".subscribe_submit_email").keyup(function(event){
        
        if (event.which==13) {
            $(".subscribe_submit_btn").click();
        }

    });

    $(".subscribe_submit_btn").click(function(){

        var email_element=$(".subscribe_submit_email");


        var this_element = $(this);
        var email = email_element.val();

        email_element.attr("disabled","disabled");
        this_element.attr("disabled","disabled");

        if (typeof (email) == "undefined" || email == "") {
            $(".subscribe_submit_email").css({"border": "2px solid red"});
            this_element.removeAttr("disabled");
            email_element.removeAttr("disabled");
        } else {

            $.ajax({
                url: base_url2 + lang_url_class + "subscribe_contact/subscribe",
                data: {"_token": _token, "email": email},
                type: 'POST',
                success: function (data) {
                    var return_data = JSON.parse(data);
                    if (typeof (return_data.error) != "undefined" && return_data.error != "error") {
                        $(".subscribe_submit_email").css({"border": "2px solid green"});
                        $(".subscribe_msg").html("");

                        var type = 'success';
                        var get_flash_message = return_data.error_msg;
                        show_flash_message(type,get_flash_message);

                    } else {
                        $(".subscribe_submit_email").css({"border": "2px solid red"});
                        $(".subscribe_msg").html(return_data.error_msg.email);
                        //$(".ajax_loader_class").remove();
                        this_element.removeAttr("disabled");
                        email_element.removeAttr("disabled");

                    }
                }

            });
        }

        return false;
    });

    $("body").on("click", ".contact_us_btn", function () {

        var parent_div=$(this).parents(".contact_us_parent_div");

        if(!check_valid(parent_div)){
            return false;
        }

        var object = {};
        object.name = $("#name",parent_div).val();
        object.tel = $("#phone",parent_div).val();
        object.email = $("#email",parent_div).val();
        object.title = $("#title",parent_div).val();
        object.msg_type = $("#msg_type",parent_div).val();
        object.message = $("#msg",parent_div).val();

        object.current_url = location.href;
        // object.subscribe_option = $("#subscribe_option_id").is(":checked");
        object._token = _token;

        var this_element = $(this);
        this_element.append(ajax_loader_img_func("15px"));

        // console.log(object);
        this_element.attr("disabled","disabled");

        $.ajax({
            url: base_url2 + lang_url_class + "subscribe_contact/make_a_contact",
            data: object,
            type: 'POST',
            success: function (data) {
                // console.log(data);
                var json_data=JSON.parse(data);
                if(typeof (json_data)!="undefined"){
                    $(".display_msgs",parent_div).html(json_data.msg);
                    this_element.removeAttr("disabled");
                    this_element.children(".ajax_loader_class").remove();

                    var type = 'info';
                    if(typeof(json_data.type) != "undefined")
                    {
                        type = json_data.type;
                    }

                    var get_flash_message = json_data.msg;
                    show_flash_message(type,get_flash_message);

                }

            }

        });
        return false;
    });

    $("body").on("change", "#shop_city_id_id", function () {

    var value = $(this).val()
        console.log(value);
        $('#searchForm').submit()
    });



});

