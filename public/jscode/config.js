var base_url2;
var base_url;
var _token;
var ajax_loader_img;
var ajax_loader_img_func;
var lang_url_class;
var call_datatable;
var call_order;
var check_valid;

$(function(){

    base_url2 = $(".url_class").val();
    base_url = base_url2 + "/public/";
    _token = $(".csrf_input_class").val();
    lang_url_class = $(".lang_url_class").val()+"/";
    ajax_loader_img="<img src='" + base_url + "img/ajax-loader.gif' class='ajax_loader_class' width='20'>";
    ajax_loader_img_func=function(img_width){
        return "<img src='" + base_url + "img/ajax-loader.gif' class='ajax_loader_class' style='width:"+img_width+";height:"+img_width+";'>";
    };

    check_valid=function(parent_element){

        var valid=true;

        $.each($(".check_valid",parent_element),function () {
            if(!$(this)[0].reportValidity()){
                valid=false;
                return false;
            }
        });

        return valid;
    };

    $("body").on("click",".hide_alert_fixed",function(){

        var parent_div=$(this).parents(".alert-fixed");

        parent_div.removeClass("alert-fixed-show");
        parent_div.removeClass("alert-success");
        parent_div.removeClass("alert-danger");
        parent_div.removeClass("alert-info");
        parent_div.removeClass("alert-warning");

        return false;
    });


});