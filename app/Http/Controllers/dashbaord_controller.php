<?php

namespace App\Http\Controllers;

use App\models\attachments_m;
use App\models\langs_m;
use App\User;
use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;

class dashbaord_controller extends Controller
{

    public $current_user_data;
    public $user_allowed_lang;
    public $settings;

    public function __construct()
    {
        parent::__construct();

        if(!is_object($this->data["current_user"])){
            return Redirect::to('/')->send();
        }


        $this->data["settings"]=new \stdClass();
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

        $notifications= [];


        $output["items_count"]=count($notifications);

        foreach($notifications as $not){
            $output["items"].='<li class="not_item col-md-12" data-not_id="'.$not->not_id.'">';
            $output["items"].='<a>';
            $output["items"].='<div class="notification_desc alert alert-'.($not->not_type!=""?"$not->not_type":"info").'">';
            $output["items"].='<p>'.$not->not_title.'</p>';
            $output["items"].='<p><span>'.date("H:i:s",strtotime($not->created_at)).'</span></p>';
            $output["items"].='</div>';
            $output["items"].='<div class="clearfix"></div>';
            $output["items"].='</a>';
            $output["items"].='</li>';
        }


        echo json_encode($output);
    }


    public function general_remove_item(Request $request,$model_name="")
    {

        $output = array();
        $item_id = (int)$request->get("item_id");

        if($model_name==""){
            $model_name = $request->get("table_name"); // App\User
        }

        if ($item_id > 0) {

            $model_name::destroy($item_id);

            $output = array();
            $removed_item = $model_name::find($item_id);
            if (!isset($removed_item)) {
                $output["deleted"] = "yes";
            }

        }

        echo json_encode($output);

    }


    public function reorder_items(Request $request) {

        $items=  $request->get("items");
        $model_name=  $request->get("table_name");  // App\User
        $field_name=  $request->get("field_name");

        $output=array();

        if (is_array($items)&&  (count($items)>0)) {
            foreach ($items as $key => $value) {
                $item_id=$value[0];
                $item_order=$value[1];

                $returned_check=$model_name::find($item_id)->update([
                    "$field_name"   =>  $item_order
                ]);

                if ($returned_check != true) {

                    $output["error"]="error";
                    echo json_encode($output);
                    return;
                }

            }
            $output["success"]="success";
        }
        else{
            $output["error"]="bad array";
        }

        echo json_encode($output);
    }


    public function accept_item(Request $request) {

        $output = array();
        $item_id = $request->get("item_id");
        $model_name = $request->get("table_name");
        $field_name = $request->get("field_name");
        $accept = $request->get("accept");

        $output["success"] = "";
        $output["status"] = "";

        if ($item_id > 0) {

            if ($accept == 0) {

                $return_statues=$model_name::find($item_id)->update(["$field_name"=>"1"]);
                if($return_statues){
                    $output["success"] = "success";
                    $output["status"] = '<span class="label label-success"> This is accepted, Reject <i class="fa fa-close"></i> ?</span>';
                    $output["new_accept"] = 1;
                }

            }
            else
            {
                $return_statues=$model_name::find($item_id)->update(["$field_name"=>"0"]);
                if($return_statues){
                    $output["success"] = "success";
                    $output["status"] = '<span class="label label-warning"> This is rejected,Accepted <i class="fa fa-check"></i>?</span>';
                    $output["new_accept"] = 0;
                }

            }

        }
        else{
            $output["success"] = "error";
        }

        echo json_encode($output);
    }

    public function new_accept_item(Request $request,$model_name="",$field_name="") {


        $output = array();
        $item_id = $request->get("item_id");

        if($model_name==""){
            $model_name = $request->get("table_name");
        }

        if($field_name==""){
            $field_name = $request->get("field_name");
        }

        $accept = $request->get("accept");
        $item_primary_col= $request->get("item_primary_col");
        $accepters_data= $request->get("acceptersdata");
        $accept_url= $request->get("accept_url");
        $display_block= $request->get("display_block");


        if ($item_id > 0) {
            $obj = $model_name::find($item_id);
            $return_statues=$obj->update(["$field_name"=>"$accept"]);


            $output["msg"]=generate_multi_accepters($accept_url,$obj,$item_primary_col,$field_name,$model_name,json_decode($accepters_data),$display_block);
        }


        echo json_encode($output);
    }



    public function general_self_edit(Request $request) {

        $output = array();
        $item_id = $request->get("item_id");
        $model_name = $request->get("table_name");
        $field_name = $request->get("field_name");
        $value = $request->get("value");
        $input_type= $request->get("input_type");
        $row_primary_col= $request->get("row_primary_col");

        $output["success"] = "";
        $output["status"] = "";

        if ($item_id > 0) {

            $item_obj=$model_name::find($item_id);
            $return_statues=$item_obj->update(["$field_name"=>$value]);
            if($return_statues){
                $output["success"] = "success";
            }

            $output["msg"]=generate_self_edit_input(
                    $url="",
                    $item_obj,
                    $item_primary_col=$row_primary_col,
                    $item_edit_col=$field_name,
                    $table=$model_name,
                    $input_type=$input_type
                );

        }
        else{
            $output["success"] = "error";
        }



        echo json_encode($output);
    }


    public function remove_admin(Request $request) {
        $output = array();
        $admin_id = $request->get("item_id");
        $output["dump"]["id"] = $admin_id;

        if (!$admin_id > 0) {
            $output["deleted"] = "admin id !>0";
            echo json_encode($output);
            return;
        }

        if ($admin_id == $this->user_id) {
            $output["deleted"] = "can not remove this admin";
            echo json_encode($output);
            return;
        }

        // check if there is another admins or not
        if (count(user::where("user_type","admin")->get()) > 1) {

            $admin = user::where("user_id",$admin_id)->get();

            if (count($admin) > 0) {
                user::destroy($admin_id);
                $output["deleted"] = "yes";
            }
            else {
                $output["deleted"] = "you have no admin with this id";
            }
        }
        else {
            $output["deleted"] = "you can not delete the last admin";
        }

        echo json_encode($output);
    }


    public function generate_table_cols($table_name,$primaryKey,$db_fileds){

        $columns = [];

        foreach ($db_fileds as $db_key=>$db_col){
            $columns[]=[
                "db"=>$db_col,
                "dt"=>$db_col
            ];
        }

        $sql_details = array(
            'user' => env("DB_USERNAME"),
            'pass' => env("DB_PASSWORD"),
            'db'   => env("DB_DATABASE"),
            'host' => env("DB_HOST")
        );


        return json_encode(
            SSP::simple( $_GET, $sql_details, $table_name,"", $primaryKey, $columns)
        );
    }
}
