<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\admin_controller;
use App\Http\Controllers\dashbaord_controller;
use App\models\attachments_m;
use App\models\binary_comission_status_m;
use App\models\langs_m;
use App\models\packages\user_packages_m;
use App\models\permissions\permission_pages_m;
use App\models\permissions\permissions_m;
use App\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class users extends admin_controller
{

    public function __construct(){
        parent::__construct();

        $this->general_get_content([
            "admin_panel_show_network_page",
            "admin_panel_list_users_page",
            "admin_panel_show_all_admin_page",
            "admin_panel_add_new_admin_page",
            "admin_panel_edit_user_data",
        ]);
    }

    #region admin

    public function get_all_admins()
    {

        if(!$this->check_user_permission("admin/admins","show_action")){
            return  Redirect::to('admin/dashboard')->with(["msg"=>"<div class='alert alert-danger'>You can not access here</div>"])->send();
        }

        $this->data["users"]=User::get_users(" 
            AND (
                u.user_type='admin' or u.user_type='dev'
            ) 
            
            "
        );

        return view("admin.subviews.users.show_admins",$this->data);
    }

    public function save_user(Request $request, $user_id = null)
    {

        if($user_id==null){
            if(!$this->check_user_permission("admin/admins","add_action")){
                return Redirect::to('admin/dashboard/')->with(["msg"=>"<div class='alert alert-danger'>You can not access here</div>"])->send();
            }
        }
        else{
            if(!$this->check_user_permission("admin/admins","edit_action")){
                return Redirect::to('admin/dashboard/')->with(["msg"=>"<div class='alert alert-danger'>You can not access here</div>"])->send();
            }
        }

        $this->data["all_langs"]=langs_m::all();


        $this->data["user_data"] = "";
        $password_required = "required";
        $logo_id=0;

        if ($user_id != null)
        {
            $password_required = "";
            $this->data["user_data"] = User::get_users(" AND u.user_id=$user_id");

            if(!isset_and_array($this->data["user_data"])){
                return Redirect::to('admin/dashboard/')->send();
            }
            $this->data["user_data"]=$this->data["user_data"][0];
            $logo_id=$this->data["user_data"]->logo_id;
            $this->data["user_data"]->user_img_file=attachments_m::find($logo_id);


        }

        if ($request->method()=="POST")
        {
            $this->validate($request,
                [
                    "password" => $password_required,
                    "email" => "required|email|unique:users,email,".$user_id.",user_id,deleted_at,NULL",
                    "full_name"=>"required",
                ]);



            if (isset($request["password"]) && !empty($request["password"]))
            {
                $request["password"] = bcrypt($request["password"]);
            }
            else{
                $request["password"] = $this->data["user_data"]->password;
            }


            $request["logo_id"] = $this->general_save_img(
                $request ,
                $item_id=$user_id,
                "user_img_file",
                $new_title = "",
                $new_alt = "",
                $upload_new_img_check = $request["user_img_checkbox"],
                $upload_file_path = "/admins",
                $width = 0,
                $height = 0,
                $photo_id_for_edit = $logo_id
            );

            // update
            if ($user_id != null)
            {
                $check = User::find($user_id)->update($request->all());

                if ($check == true)
                {
                    $this->data["msg"] = "<div class='alert alert-success'> Data Successfully Edit </div>";
                }
                else{
                    $this->data["msg"] = "<div class='alert alert-danger'> Something Is Wrong !!!!</div>";
                }


            }
            else{
                $request["user_type"] = "admin";
                $request["user_active"] = "1";

                $check = User::create($request->all());

                if (is_object($check))
                {
                    $this->data["msg"] = "<div class='alert alert-success'> Data Successfully Inserted </div>";


                }
                else{
                    $this->data["msg"] = "<div class='alert alert-danger'> Something Is Wrong !!!!</div>";
                }

                $user_id=$check->user_id;
            }

            return Redirect::to('admin/users/save/'.$user_id)->with([
                "msg"=>$this->data["msg"]
            ])->send();
        }


        return view("admin.subviews.users.save")->with($this->data);
    }

    public function assign_permission(Request $request,$user_id){

        if(!$this->check_user_permission("admin/admins","manage_permissions")){
            return Redirect::to('admin/dashboard/')->with(["msg"=>"<div class='alert alert-danger'>You can not access here</div>"])->send();
        }

        $user_obj=User::where("user_id",$user_id)->get()->first();

        if(!is_object($user_obj)){
            return Redirect::to('admin/dashboard/')->send();
        }

        $this->data["user_obj"]=$user_obj;

        //get all permission pages
        $all_permission_pages=permission_pages_m::where("sub_sys","admin")->get()->all();
        $all_permission_pages=array_combine(convert_inside_obj_to_arr($all_permission_pages,"per_page_id"),$all_permission_pages);

        //get all user permissions
        $all_user_permissions=permissions_m::where("user_id",$user_id)->get()->all();
        $all_user_permissions=array_combine(convert_inside_obj_to_arr($all_user_permissions,"per_page_id"),$all_user_permissions);

        $this->data["all_permission_pages"]=$all_permission_pages;
        $this->data["all_user_permissions"]=$all_user_permissions;


        foreach($all_user_permissions as $user_per_key=>$user_per_val){
            unset($all_permission_pages[$user_per_key]);
        }


        if(isset_and_array($all_permission_pages)){
            foreach($all_permission_pages as $page_key=>$page_val){
                permissions_m::create([
                    "user_id"=>"$user_id",
                    "per_page_id"=>"$page_key"
                ]);
            }

            return Redirect::to('admin/users/assign_permission/'.$user_id)->send();
        }


        if($request->method()=="POST"){

            foreach($all_user_permissions as $user_per_key=>$user_per_val){
                $new_perms=$request->get("additional_perms_new".$user_per_val->per_id);
                permissions_m::where("per_id",$user_per_val->per_id)->update([
                    "additional_permissions"=>json_encode($new_perms)
                ]);
            }


            return Redirect::to('admin/users/assign_permission/'.$user_id)->with([
                "msg"=>"<div class='alert alert-success'>Update User Permissions</div>"
            ])->send();

        }


        return view("admin.subviews.users.user_permissions",$this->data);
    }

    public function remove_admin(Request $request){

        if(!$this->check_user_permission("admin/admins","delete_action")){
            echo json_encode(["msg"=>"<div class='alert alert-danger'>You can not access here</div>"]);
            return;
        }

        $admins_count=User::whereIn("user_type",["admin","dev"])->count();

        $output=[];
        if($admins_count==1){
            $output["msg"]="<div class='alert alert-danger'>You can not delete last admin</div>";
            echo json_encode($output);
            return;
        }

        $this->general_remove_item($request,'App\User');
    }

    public function change_user_can_login(Request $request){
        $this->new_accept_item($request,$model_name='App\User',$field_name="user_can_login");
    }

    #endregion


    #region network users

    public function show_users_tree($user_code=null){

        $all_users = User::
        select("users.*",'attachments.path')->
        leftJoin("attachments","attachments.id","=","users.logo_id")->
        where([
            "user_type" => "user"
        ])->get();

        $this->current_user_data->user_code="first_code";

        $all_users_group_by_user_code=$all_users->groupBy("user_code");
        $all_users_group_by_parent_id=$all_users->groupBy("parent_id");

        $current_user_node=User::get_users(" and u.user_code = '".$this->current_user_data->user_code."' ");
        $current_user_node = $current_user_node[0];
        if(!is_object($current_user_node)){
            return abort(404);
        }

        $current_user_node->active=$this->get_user_status($current_user_node);
        //get his childs
        $nodes[$this->current_user_data->user_code]["data"]=$current_user_node;
        $nodes[$this->current_user_data->user_code]["childs"]=$this->get_node_childs($current_user_node,$this->current_user_data->user_code,$all_users_group_by_user_code,$all_users_group_by_parent_id);


        if($user_code==null||$user_code=="first_code"){
            $user_code="first_code";
        }
        else{
            //check if this $user_code is exist in $this->current_user_data tree


            $is_exist=collect($nodes)->flatten()->search(function ($item, $key) use ($user_code) {
                return $item->user_code == $user_code;
            });


            if($is_exist>=0&&$is_exist!=false){
                $current_user_node=User::get_users(" and u.user_code = '".$user_code."' ");
                $current_user_node = $current_user_node[0];
                if(!is_object($current_user_node)){
                    return Redirect::to("/user/chat")->send();
                }

                $current_user_node=$current_user_node;
                $current_user_node->active=$this->get_user_status($current_user_node);
                //get his childs
                $nodes[$user_code]["data"]=$current_user_node;
                $nodes[$user_code]["childs"]=$this->get_node_childs($current_user_node,$user_code,$all_users_group_by_user_code,$all_users_group_by_parent_id);
            }
            else{
                return Redirect::to("/user/dashboard")->send()->with(["msg"=>"<div class='alert alert-danger'>You can not see this tree</div>"]);
            }

        }



        $total_side_nodes = [];
        $active_side_nodes = [];
        foreach($nodes[$user_code]["childs"] as $key => $node)
        {
            if (!isset($node["data"]->user_position))
            {
                continue;
            }
            $total_side_nodes[$node["data"]->user_position] = collect($nodes["$user_code"]["childs"]["$key"])->flatten()->groupBy("user_code");

            unset($total_side_nodes[$node["data"]->user_position][""]);
        }

        foreach ($total_side_nodes as $key =>$side)
        {
            $active_side_nodes[$key] = $side->flatten()->groupBy("active");
        }



        $this->data["nodes"]=$nodes;
        $this->data["current_user_node"]=$current_user_node;
        $this->data["total_side_nodes"]=$total_side_nodes;
        $this->data["active_side_nodes"]=$active_side_nodes;

        return view("admin.subviews.users.tree.users_tree",$this->data);
    }

    public function calc_network_income(Request $request)
    {
        $output=[];

        $user_code=$request->get("user_code");

        $node=User::where("user_code",$user_code)->get()->first();

        if(!is_object($node)){
            return;
        }

        if($this->get_user_status($node)!="active"){

            $node_binary_status = binary_comission_status_m::where("user_id",$node->user_id)->get()->first();

            $output["left_pv"]=0;
            $output["right_pv"]=0;

            if(is_object($node_binary_status)){
                $output["left_pv"]=$node_binary_status->bin_pv_left;
                $output["right_pv"]=$node_binary_status->bin_pv_right;
            }

            $output["user_status"]="not_active";

            echo json_encode($output);
            return;
        }

        $all_users = User::where([
            "user_type" => "user"
        ])->get();


        $all_users_group_by_user_code=$all_users->groupBy("user_code");
        $all_users_group_by_parent_id=$all_users->groupBy("parent_id");


        //get his childs
        $nodes[$node->user_code]["data"]=$node;
        $nodes[$node->user_code]["childs"]=$this->get_node_childs($node,$node->user_code,$all_users_group_by_user_code,$all_users_group_by_parent_id);

        $total_side_nodes = [];
        $active_side_nodes = [];
        //dump($nodes);
        // $node have no childs then do not make any step
        if (!isset($nodes[$node->user_code]["childs"]) || count($nodes[$node->user_code]["childs"]) == 0)
        {
            $output["left_pv"]=0;
            $output["right_pv"]=0;
            echo json_encode($output);
            return;
        }
        foreach($nodes[$node->user_code]["childs"] as $key => $node_item)
        {
            // $node have jsut one child and the is virtual so it is countable
            if(!isset($node_item["data"])||!isset($node_item["data"]->user_position))
            {
                continue;
            }
            $total_side_nodes[$node_item["data"]->user_position] = collect($nodes["$node->user_code"]["childs"]["$key"])->flatten()->groupBy("user_code");

            unset($total_side_nodes[$node_item["data"]->user_position][""]);
        }

        //in some way he pass wo this line and not found any childs of sides
        if(!count($total_side_nodes))
        {
            $output["left_pv"]=0;
            $output["right_pv"]=0;
            echo json_encode($output);
            return;
        }


        foreach ($total_side_nodes as $key =>$side)
        {
            $active_side_nodes[$key] = $side->flatten()->groupBy("active");
        }


        //$node has no active nodes on both sides or has no active nodes in one side
        $left_nodes_pv = 0;
        $right_nodes_pv = 0;


        // get binary status row for this node
        $node_binary_status = binary_comission_status_m::where("user_id",$node->user_id)->get()->first();
        if(!is_object($node_binary_status))
        {
            $node_binary_status = binary_comission_status_m::create([
                "user_id" =>$node->user_id,
                "bin_pv_left" =>0,
                "bin_pv_right" =>0,
                "bin_last_comssion_date" =>$node->created_at,
            ]);
        }

        $left_nodes_ids=[];
        if (isset($active_side_nodes["left"])&&isset($active_side_nodes["left"]["active"])){
            $left_nodes_ids = convert_inside_obj_to_arr($active_side_nodes["left"]["active"],"user_id");
            $left_nodes_pv = user_packages_m::get_sum_of_packages($left_nodes_ids,$node_binary_status->bin_last_comssion_date);
            $left_nodes_pv = $left_nodes_pv+$node_binary_status->bin_pv_left;
        }

        $right_nodes_ids=[];
        if(isset($active_side_nodes["right"])&&isset($active_side_nodes["right"]["active"])){
            $right_nodes_ids = convert_inside_obj_to_arr($active_side_nodes["right"]["active"],"user_id");
            $right_nodes_pv = user_packages_m::get_sum_of_packages($right_nodes_ids,$node_binary_status->bin_last_comssion_date);
            $right_nodes_pv = $right_nodes_pv+$node_binary_status->bin_pv_right;
        }

        $output["left_nodes_count"]=count($left_nodes_ids);
        $output["right_nodes_count"]=count($right_nodes_ids);

        $output["left_pv"]=$left_nodes_pv;
        $output["right_pv"]=$right_nodes_pv;

        $network_profit=min($left_nodes_pv,$right_nodes_pv)*($this->settings->network_profit_percent/100);
        $network_profit=round($network_profit,1);

        $output["network_profit"]="<label class='label label-success'>".$network_profit." USD </label>";

        echo json_encode($output);
    }

    public function search_into_your_network(Request $request){

        $output=[];
        $search_text=clean($request->get("search_text"));

        $this->current_user_data=User::where("user_code","first_code")->get()->first();

        if(empty($search_text)){
            $output["msg"]="<div class='alert alert-danger'>Please add text</div>";
            echo json_encode($output);
            return;
        }


        $all_users = User::
        select("users.*",'attachments.path')->
        leftJoin("attachments","attachments.id","=","users.logo_id")->
        where([
            "user_type" => "user"
        ])->get();

        $all_users_group_by_user_code=$all_users->groupBy("user_code");
        $all_users_group_by_parent_id=$all_users->groupBy("parent_id");

        $nodes=$this->get_node_childs(
            $this->current_user_data,
            $this->current_user_data->user_code,
            $all_users_group_by_user_code,
            $all_users_group_by_parent_id
        );


        $search_users=[];

        collect($nodes)->flatten()->search(function ($item, $key) use ($search_text,&$search_users) {
            if(
                !empty($search_text)&&
                (strpos($item->full_name,$search_text)!==false||strpos($item->username,$search_text)!==false)
            ){
                $search_users[$item->user_code]=$item->full_name." - ".$item->username;
            }
        });

        if (!count($search_users)){
            $output["msg"]="<div class='alert alert-danger'>no users found</div>";
            echo json_encode($output);
            return;
        }

        $output["search_users"]=$search_users;

        echo json_encode($output);
    }

    public function list_users()
    {

        $user_code = "first_code";

        $this->current_user_data=User::where("user_code","first_code")->get()->first();

        $all_users = User::
        select(\DB::raw("
            users.*,
            attachments.path,
            sponsor_obj.email as 'sponsor_email',
            sponsor_obj.username as 'sponsor_username',
            sponsor_obj.full_name as 'sponsor_full_name',
            sponsor_obj.phone as 'sponsor_phone'
        "))->
        leftJoin("attachments","attachments.id","=","users.logo_id")->
        leftJoin("users as sponsor_obj","sponsor_obj.user_code","=","users.sponsor_id")->
        where([
            "users.user_type" => "user"
        ])->get();


        $all_users_group_by_user_code=$all_users->groupBy("user_code");
        $all_users_group_by_parent_id=$all_users->groupBy("parent_id");


        $current_user_node=User::get_users(" and u.user_code = '".$this->current_user_data->user_code."' ");
        $current_user_node = $current_user_node[0];
        if(!is_object($current_user_node)){
            return Redirect::to("/user/chat")->send();
        }

        $current_user_node->active=$this->get_user_status($current_user_node);
        //get his childs
        $nodes[$this->current_user_data->user_code]["data"]=$current_user_node;
        $nodes[$this->current_user_data->user_code]["childs"]=$this->get_node_childs($current_user_node,$this->current_user_data->user_code,$all_users_group_by_user_code,$all_users_group_by_parent_id);


        if($user_code==null||$user_code==$this->current_user_data->user_code){
            $user_code=$this->current_user_data->user_code;
        }
        else{
            //check if this $user_code is exist in $this->current_user tree


            $is_exist=collect($nodes)->flatten()->search(function ($item, $key) use ($user_code) {
                return $item->user_code == $user_code;
            });


            if($is_exist>=0&&$is_exist!=false){
                $current_user_node=User::get_users(" and u.user_code = '".$user_code."' ");
                $current_user_node = $current_user_node[0];
                if(!is_object($current_user_node)){
                    return Redirect::to("/user/chat")->send();
                }

                $current_user_node=$current_user_node;
                $current_user_node->active=$this->get_user_status($current_user_node);
                //get his childs
                $nodes[$user_code]["data"]=$current_user_node;
                $nodes[$user_code]["childs"]=$this->get_node_childs($current_user_node,$user_code,$all_users_group_by_user_code,$all_users_group_by_parent_id);
            }
            else{
                return Redirect::to("/user_panel")->send()->with(["msg"=>"<div class='alert alert-danger'>You can not see this tree</div>"]);
            }

        }



        $total_side_nodes = [];
        $active_side_nodes = [];
        foreach($nodes[$user_code]["childs"] as $key => $node)
        {
            if (!isset($node["data"]->user_position))
            {
                continue;
            }
            $total_side_nodes[$node["data"]->user_position] = collect($nodes["$user_code"]["childs"]["$key"])->flatten()->groupBy("user_code");

            unset($total_side_nodes[$node["data"]->user_position][""]);
        }

        foreach ($total_side_nodes as $key =>$side)
        {
            $active_side_nodes[$key] = $side->flatten()->groupBy("active");
        }



        $this->data["nodes"]=$all_users;
        $this->data["current_user_node"]=$current_user_node;
        $this->data["total_side_nodes"]=$total_side_nodes;
        $this->data["active_side_nodes"]=$active_side_nodes;


        return view("admin.subviews.users.users_table.show_users",$this->data);
    }

    public function edit_user(Request $request){
        $user_id=$request->get("user_id");
        $user_obj=User::findOrfail($user_id);
        $user_img_obj=attachments_m::find($user_obj->logo_id);

        $this->data["user_obj"]=$user_obj;
        $this->data["user_img_obj"]=$user_img_obj;


        if($request->method()=="POST"){

            $this->validate($request,[
                "full_name"=>"required",
                "email" => "required|email|unique:users,email,".$user_id.",user_id,deleted_at,NULL",
            ]);

            $cleaned_request=$this->cleaning_input($request->all());

            $cleaned_request["logo_id"] = $this->general_save_img(
                $request ,
                $item_id=$user_id,
                "user_img_file",
                $new_title = "",
                $new_alt = "",
                $upload_new_img_check = $request["user_img_checkbox"],
                $upload_file_path = "/users",
                $width = 0,
                $height = 0,
                $photo_id_for_edit = $user_obj->logo_id
            );

            if($request->get("password")!=""){
                $cleaned_request["password"]=bcrypt($request->get("password"));
            }

            User::findOrFail($user_id)->update($cleaned_request);

            return \Redirect::to('admin/users/edit_user?user_id='.$user_id)->with([
                "msg"=>"<div class='alert alert-info'>Updated Successfully</div>"
            ])->send();
        }


        return view("admin.subviews.users.edit_user",$this->data);
    }

    #endregion


}
