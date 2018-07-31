$(function () {


    $("body").on("click",".register_btn",function(){

        var this_element=$(this);
        var parent_element=this_element.parents(".register_parent_div");

        if(!check_valid(parent_element)){
            return false;
        }

        var obj={};
        obj._token=_token;
        obj.email=$(".email_input",parent_element).val();
        obj.full_name=$(".full_name_input",parent_element).val();
        obj.username=$(".username_input",parent_element).val();
        obj.password=$(".password_input",parent_element).val();
        obj.password_confirmation=$(".repeat_password_input",parent_element).val();
        obj.phone=$(".phone_input",parent_element).val();
        obj.address=$(".address_input",parent_element).val();
        obj.country=$(".country_input",parent_element).val();
        obj.city=$(".city_input",parent_element).val();


        if(obj.password!=obj.password_confirmation){
            $(".request_msgs",parent_element).html("<div class='alert alert-danger'>password does not match</div>");
            return false;
        }

        if($(".parent_user_code").length){
            obj.user_code=$(".parent_user_code").val();
        }

        this_element.append(ajax_loader_img_func("10px"));

        console.log(obj);

        $.ajax({
            url:base_url2+"/register",
            type:"POST",
            data:obj,
            success:function(data){
                var ajax_data=JSON.parse(data);
                this_element.children("img").remove();

                if (typeof (ajax_data.msg)!=undefined){
                    $(".request_msgs",parent_element).html(ajax_data.msg);
                }

            }
        });

        return false;
    });

});