<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\admin_controller;
use App\models\attachments_m;
use App\models\pages\pages_m;
use App\models\pages\pages_translate_m;
use File;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;


class pages extends admin_controller
{

    public function __construct()
    {
        parent::__construct();

        //page-types default,article,video,photo_gallery

        pages_m::$this_lang_id=$this->user_allowed_lang;

        $this->general_get_content([
            "admin_panel_show_all_pages_page",
            "admin_panel_add_new_page_page",
        ]);
    }

    public $allowed_types=["default"];

    public function index($page_type = "default")
    {

        if (!in_array($page_type,$this->allowed_types))
        {
            return "you have no langs";
        }

        $page_check_permission="admin/pages";



        $this->data["page_type"]=$page_type;

        $this->data["pages"] = pages_m::get_pages(" AND page.page_type='$page_type'");

        return view("admin.subviews.pages.show")->with($this->data);
    }


    public function save_page(Request $request, $page_type = "default", $page_id = null)
    {
        if (!in_array($page_type,$this->allowed_types))
        {
            return Redirect::to('admin/dashboard/')->send();
        }


        $page_check_permission="admin/pages";




        if (is_array($this->data["all_langs"]) && count($this->data["all_langs"]) == 0)
        {
            return Redirect::to('admin/langs/save_lang')->send();
        }

        $this->data["page_type"]=$page_type;


        $big_img_width_height=[
            "height"=>"0",
            "width"=>"0"
        ];

        $small_img_width_height=[
            "height"=>"0",
            "width"=>"0"
        ];
        

        if($page_type=="default"){
            $small_img_width_height="";
        }


        $this->data["big_img_width_height"]=$big_img_width_height;
        $this->data["small_img_width_height"]=$small_img_width_height;


        $this->data["page_data"] = "";
        $all_page_translate_rows = collect([]);

        $small_img_id = 0;
        $big_img_id = 0;

        if ($page_id != null)
        {
            $page_result = pages_m::get_pages(" and page.page_id = $page_id ","","",true);
            if(isset_and_array($page_result)){
                $page_result=$page_result[0];

                $page_result->page_small_img=attachments_m::find($page_result->small_img_id);
                $page_result->page_big_img=attachments_m::find($page_result->big_img_id);
            }
            else{
                abort(404);
            }


            $this->data["page_data"] = $page_result;
            $small_img_id = $page_result->small_img_id;
            $big_img_id = $page_result->big_img_id;

            $all_page_translate_rows = pages_translate_m::where("page_id",$page_id)->get();
        }

        $this->data["all_page_translate_rows"] = $all_page_translate_rows;


        if ($request->method()=="POST")
        {

            if ($page_type == "article")
            {
                $validator_value = [
                    "page_title"=>$request->get("page_title"),
                ];
                $validator_rule = [
                    "page_title.0"=>"required",
                ];

                $validator = Validator::make(
                    $validator_value,$validator_rule
                );

                $validator->setAttributeNames([
                    "page_title.0"=>"Name",
                ]);

            }
            else{

                $validator_value = [
                    "page_title"=>$request->get("page_title"),
                ];
                $validator_rule = [
                    "page_title.0"=>"required",
                ];

                $validator = Validator::make(
                    $validator_value,$validator_rule
                );

                $validator->setAttributeNames([
                    "page_title.0"=>"Name",
                ]);

            }

            if (count($validator->messages()) == 0)
            {

                $request["page_type"] = "$page_type";

                if(is_array($big_img_width_height)){
                    $request["big_img_id"] = $this->general_save_img(
                        $request ,
                        $item_id=$page_id,
                        "big_img_file",
                        $new_title = $request["big_img_filetitle"],
                        $new_alt = $request["big_img_filealt"],
                        $upload_new_img_check = $request["big_img_checkbox"],
                        $upload_file_path = "/pages",
                        $width = $big_img_width_height["width"],
                        $height = $big_img_width_height["height"],
                        $photo_id_for_edit = $big_img_id
                    );

                }

                if(is_array($small_img_width_height)){
                    $request["small_img_id"] = $this->general_save_img(
                        $request ,
                        $item_id=$page_id,
                        "small_img_file",
                        $new_title = $request["small_img_filetitle"],
                        $new_alt = $request["small_img_filealt"],
                        $upload_new_img_check = $request["small_img_checkbox"],
                        $upload_file_path = "/pages",
                        $width = $small_img_width_height["width"],
                        $height = $small_img_width_height["height"],
                        $photo_id_for_edit = $small_img_id
                    );
                }


                $request["json_values_of_sliderpage_slider_file"] = json_decode($request->get("json_values_of_sliderpage_slider_file"));

                $request["page_slider"] = $this->general_save_slider(
                    $request,
                    $field_name="page_slider_file",
                    $width=0,
                    $height=0,
                    $new_title_arr = $request->get("page_slider_file_title"),
                    $new_alt_arr = $request->get("page_slider_file_alt"),
                    $json_values_of_slider=$request["json_values_of_sliderpage_slider_file"],
                    $old_title_arr = $request->get("page_slider_file_edit_title"),
                    $old_alt_arr = $request->get("page_slider_file_edit_alt"),
                    $path="/pages/slider"
                );

                $request["page_slider"] = json_encode($request["page_slider"]);

                $related_pages=[];
                $related_addons=[];

                if (isset($request["related_pages"])){
                    $related_pages=$request["related_pages"];
                    $request["related_pages"]="";
                }

                if(isset_and_array($related_pages)&&$page_type=="trip"){
                    $request["related_pages"]=json_encode($related_pages);
                }
                
                $page_obj="";


                // update
                if ($page_id != null)
                {
                    $page_obj=pages_m::find($page_id);
                    $check = $page_obj->update($request->all());

                    if ($check == true)
                    {
                        $this->data["success"] = "<div class='alert alert-success'> Data Successfully Edit </div>";
                        $return_id = $page_id;
                    }
                    else{
                        $this->data["success"] = "<div class='alert alert-danger'> Something Is Wrong !!!!</div>";
                    }

                }
                else{

                    // insert
                    $page_obj = pages_m::create($request->all());

                    if (is_object($page_obj))
                    {

                        $this->data["success"] = "<div class='alert alert-success'> Data Successfully Inserted </div>";
                        $return_id = $page_obj->page_id;

                    }
                    else{
                        $this->data["success"] = "<div class='alert alert-danger'> Something Is Wrong !!!!</div>";
                    }

                }


                if($page_type=="trip"&&isset_and_array($related_addons)){
                    $page_obj->trip_addons()->sync($related_addons);
                }


                // save pages_translate
                $input_request = $request->all();

                foreach($this->data["all_langs"] as $lang_key => $lang_item)
                {
                    $inputs = array();
                    $inputs["page_id"] = $return_id;
                    $inputs["page_title"] = array_shift($input_request["page_title"]);
                    $inputs["page_slug"] = trim(string_safe($inputs["page_title"]));
                    $inputs["page_body"] =  array_shift($input_request["page_body"]);
//                    $inputs["page_short_desc"] =  array_shift($input_request["page_short_desc"]);
                    $inputs["lang_id"] = $lang_item->lang_id;

                    $current_row = $this->data["all_page_translate_rows"]->filter(function ($value, $key) use($lang_item) {
                        if ($value->lang_id == $lang_item->lang_id)
                        {
                            return $value;
                        }

                    });


                    // edit
                    if (is_object($current_row->first()))
                    {
                        pages_translate_m::where("id",$current_row->first()->id)->update($inputs);
                    }
                    else{
                        pages_translate_m::create($inputs);
                    }

                }

                return Redirect::to("admin/pages/save_page/$page_type/".$return_id)->with(["msg"=>"<div class='alert alert-success'> Data Successfully Updated </div>"])->send();


            }
            else{
                $this->data["errors"] = $validator->messages();
            }

        }

        return view("admin.subviews.pages.save")->with($this->data);
    }

    public function remove_page(Request $request){

        $item_id = (int)$request->get("item_id");
        if (check_permission($this->user_permissions,"admin/trip","delete_action"))
        {
            $this->general_remove_item($request,'App\models\pages\pages_translate_m');
            pages_translate_m::where("page_id",$item_id)->delete();
            return;
        }
        elseif (check_permission($this->user_permissions,"admin/pages","delete_action"))
        {
            $this->general_remove_item($request,'App\models\pages\pages_translate_m');
            pages_translate_m::where("page_id",$item_id)->delete();
            return;
        }

        echo json_encode(["msg"=>"<div class='alert alert-danger'>You can not access here</div>"]);
        return;
    }





}
