<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\admin_controller;
use App\Http\Controllers\dashbaord_controller;
use App\models\attachments_m;
use App\models\category_m;
use App\models\cities_m;
use App\models\articles_m;
use App\models\langs_m;
use App\User;
use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class articles extends admin_controller
{

    public function __construct(){
        parent::__construct();

    }

    #region admin

    public function save_article(Request $request ,$article_id = null)
    {
        $this->data["article_data"] = "";
        $this->data["categories"] = category_m::get_all_cats(" AND cat.cat_type = 'article'");
        if ($article_id != null)
        {
            $this->data["article_data"] = articles_m::get_article(" AND article.article_id=$article_id");

            if(!isset_and_array($this->data["article_data"])){
                return abort(404);
            }
            $this->data["article_data"]=$this->data["article_data"][0];
            $this->data["article_data"]->articles_img_obj=attachments_m::find($this->data["article_data"]->attach_id);
        }

        if ($request->method()=="POST")
        {
            $this->validate($request,
                [
                    "cat_id"=>"required",
                ]);

            $request["attach_id"] = $this->general_save_img(
                $request ,
                $item_id=$article_id,
                "img_file",
                $new_title = "",
                $new_alt = "",
                $upload_new_img_check = $request["img_checkbox"],
                $upload_file_path = "/article",
                $width = 0,
                $height = 0,
                $photo_id_for_edit = $article_id
            );


            // update
            if ($article_id != null)
            {
                $check = articles_m::find($article_id)->update($request->all());

                if ($check == true)
                {
                    $this->data["msg"] = "<div class='alert alert-success'> Data Successfully Edit </div>";
                }
                else{
                    $this->data["msg"] = "<div class='alert alert-danger'> Something Is Wrong !!!!</div>";
                }


            }
            else{
                $request = $request->all();
                $check = articles_m::create($request);

                if (is_object($check))
                {
                    $this->data["msg"] = "<div class='alert alert-success'> Data Successfully Inserted </div>";


                }
                else{
                    $this->data["msg"] = "<div class='alert alert-danger'> Something Is Wrong !!!!</div>";
                }

                $article_id=$check->article_id;
            }

            return Redirect::to('admin/article/save_article/'.$article_id)->with([
                "msg"=>$this->data["msg"]
            ])->send();
        }


        return view("admin.subviews.article.save")->with($this->data);
    }

    public function all_article($cat_id)
    {

        $this->data["articles"]=articles_m::get_article("AND article.cat_id=$cat_id");
        $this->data["category"]=category_m::get_all_cats("AND cat.cat_id=$cat_id");
        if(!isset_and_array($this->data["category"])){
            return abort(404);
        }

        $this->data["category"]=$this->data["category"][0]->cat_name;
        return view("admin.subviews.article.show",$this->data);
    }
    #endregion

}