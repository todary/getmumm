<?php

namespace App\Http\Controllers;

use App\helpers\network_utilities;
use App\models\attachments_m;
use App\models\notification_m;
use App\models\pages\pages_m;
use App\models\support_messages_m;
use App\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use SSP;

class user_controller extends dashbaord_controller
{

    public $current_user_data;
    public $user_permissions;


    public function __construct()
    {
        parent::__construct();
        $this->middleware("check_user");
        $this->current_user_data=$this->data["current_user"];


        $this->data["notifications"] =
            notification_m::get_notifications("
            where not_to_userid=$this->user_id 
            order by created_at desc
            limit 99
            ");

        //$this->data["display_lang"]=session("display_lang","en");

        $this->data["userpanel_left_side_pages"]  = pages_m::get_pages(
            " 
            AND page.page_type='default' 
            AND page.hide_page=0 
            AND page.show_in_userpanel_left_side=1 
            AND page_trans.page_title!=''
            
            ",
            $order_by = "" ,
            $limit = "",
            $check_self_translates = false,
            $default_lang_id=$this->lang_id
        );

        if($this->current_user_data->selected_lang_id>0){
            $this->lang_id=$this->current_user_data->selected_lang_id;
        }

        $this->general_get_content([
            "userpanel_other_menu_items",
            "userpanel_packages_menu",
            "userpanel_payment_status_page",
            "userpanel_user_cash_menu",
            "userpanel_users_menu",
        ]);

        $this->data["sponsor_status"]=network_utilities::get_user_status($this->current_user_data);

    }

    public function check_new_notifications(Request $request){

        $user_id=$request->get("user_id");
        $last_not_id=$request->get("last_not_id");

        $output=[];
        $output["items"]="";
        $output["items_count"]="0";

        $cond = "  ";
        if (!empty($last_not_id))
        {
            $cond = " AND not_id > $last_not_id ";
        }

        $notifications= notification_m::get_notifications(
            " where
            not_to_userid=$user_id 
            $cond
            order by created_at asc"
        );


        $output["items_count"]=count($notifications);

        foreach($notifications as $not){
            $output["items"].='<li class="not_item col-md-12" data-not_id="'.$not->not_id.'">';
            $output["items"].='<a>';
            $output["items"].='<div class="notification_desc alert alert-'.($not->not_type!=""?"$not->not_type":"info").'">';
            $output["items"].='<p>'.$not->not_title.'</p>';
            $output["items"].='<p><span>'.\Carbon\Carbon::createFromTimestamp(strtotime($not->created_at))->diffForHumans().'</span></p>';
            $output["items"].='</div>';
            $output["items"].='<div class="clearfix"></div>';
            $output["items"].='</a>';
            $output["items"].='</li>';
        }


        echo json_encode($output);
    }

}
