<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\admin_controller;
use App\models\attachments_m;
use App\models\canva_m;
use App\models\category_m;
use App\models\category_translate_m;
use App\models\langs_m;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;


class category extends admin_controller
{
    public function __construct()
    {
        parent::__construct();


        category_m::$this_lang_id=$this->user_allowed_lang;
    }

    public $allowed_types=["article","element","template"];


    public function index($cat_type="article",$parent_id = 0)
    {

        $this->data["cat_type"]=$cat_type;

        $cond_arr=[];
        $cond_arr[]=" AND cat.cat_type='$cat_type' ";
        if($parent_id>0&&($cat_type=="article"||$cat_type=="template")){
            $cond_arr[]="and cat.parent_id = $parent_id ";
        }
        elseif($cat_type!="article"){
            $cond_arr[]="and cat.parent_id = $parent_id ";
        }

        $this->data["all_cats"] = category_m::get_all_cats(implode(" ",$cond_arr) , " order by cat.cat_order ");

        return view("admin.subviews.cats.show")->with($this->data);
    }

    public function save_cat(Request $request , $cat_type = "article" ,$cat_id = null)
    {

        if(count($this->data["lang_ids"])==0){
            return redirect("/admin/langs/save_lang");
        }

        //cat data
        $this->data["cat_data"] = "";
        $cat_data_translate_rows=collect([]);
        $small_img_id=0;

        $this->data["selected_cat_type"] = $cat_type;


        //cat parent data
//        if($cat_type=="article"||$cat_type=="template"){
//            $this->data["all_parent_cats"] = category_m::get_all_cats(
//                " AND cat.cat_type='$cat_type' AND cat.parent_id=0 "
//            );
//        }


        if ($cat_id != null){
            $cat_data=category_m::get_all_cats(" AND cat.cat_id=$cat_id");

            if(isset_and_array($cat_data)){
                $cat_data_translate_rows=category_translate_m::where("cat_id",$cat_id)->get();
                $this->data["cat_data"]=$cat_data[0];
                $small_img_id=$this->data["cat_data"]->small_img_id;
                $this->data["cat_data"]->cat_small_img=attachments_m::find($small_img_id);
            }
            else{
                abort(404);
            }


        }

        $this->data["cat_data_translate_rows"]=$cat_data_translate_rows;

        if (isset($request) && count($request->all()) >0)
        {

            $rules_values=[
                "cat_name" => $request["cat_name"],
            ];

            $rules_itself=[
                "cat_name.0" => "required",
            ];


            $validator = Validator::make($rules_values,$rules_itself);

            if (count($validator->messages()) == 0)
            {


                #region add_or_edit
                $inputs=$request->all();



                $inputs["small_img_id"] = $this->general_save_img(
                    $request,
                    $item_id = $cat_id,
                    "small_img",
                    $new_title = $request->get("small_imgtitle"),
                    $new_alt = $request->get("small_imgalt"),
                    $upload_new_img_check = $request->get("small_img_checkbox"),
                    $upload_file_path = "/category/",
                    $width = 0, $height = 0,
                    $photo_id_for_edit = $small_img_id
                );

                $inputs["cat_type"] = $cat_type;

                $return_id=0;

                if ($cat_id != null){
                    // update
                    $check = category_m::find($cat_id)->update($inputs);

                    if ($check == true)
                    {
                        $this->data["msg"] = "<div class='alert alert-success'> Data Successfully Edit </div>";
                        //return redirect("admin/category/save_cat/article/$cat_id");
                        $return_id=$cat_id;
                    }
                    else{
                        $this->data["msg"] = "<div class='alert alert-danger'> Something Is Wrong !!!!</div>";
                    }

                }
                else{
                    // insert
                    $check = category_m::create($inputs);

                    if (is_object($check))
                    {
                        $this->data["msg"] = "<div class='alert alert-success'> Data Successfully Inserted </div>";
                        $return_id=$check->cat_id;
                    }
                    else{
                        $this->data["msg"] = "<div class='alert alert-danger'> Something Is Wrong !!!!</div>";
                    }

                }

                //add || edit category_translate
                $cat_names=$request->get("cat_name");


                foreach ($this->data["lang_ids"] as $key => $lang_item) {

                    $translate_inputs=[
                        "cat_id"=>$return_id,
                        "cat_name"=>array_shift($cat_names),
                        "lang_id"=>$lang_item->lang_id
                    ];

                    if(empty($translate_inputs["cat_name"])){
                        continue;
                    }




                    $current_row = $cat_data_translate_rows->filter(function ($value, $key) use($lang_item) {
                        if ($value->lang_id == $lang_item->lang_id)
                        {
                            return $value;
                        }

                    });


                    if(is_object($current_row->first())){
                        //edit_translation row
                        $current_row->first()->update($translate_inputs);
                    }
                    else{
                        //add translation row
                        category_translate_m::create($translate_inputs);
                    }


                }//end foreach


                if($return_id>0){

                    return Redirect::to("admin/category/save_cat/$cat_type/$return_id")->with(["msg"=>$this->data["msg"]])->send();
                }

                #endregion

            }
            else{
                $this->data["errors"]=$validator->messages();
            }



        }//end submit


        return view("admin.subviews.cats.save")->with($this->data);
    }

    public function delete_cat(Request $request){

        $this->general_remove_item($request,'App\models\category_translate_m');
    }

    public function templates_cat(Request $request, $cat_id)
    {
        $this->data["category"]=category_m::get_all_cats("AND cat.cat_id=$cat_id");
        if(!isset_and_array($this->data["category"])){
            return abort(404);
        }
        $this->data["category"]=$this->data["category"][0]->cat_name;
        $this->data["templates_data"] = canva_m::get_canva(" AND canva.cat_id=$cat_id");
        return view("admin.subviews.templates.show")->with($this->data);
    }
}
