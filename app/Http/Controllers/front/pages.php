<?php

namespace App\Http\Controllers\front;

//use Illuminate\Http\Request;
use App\models\langs_m;
use App\models\pages\page_tags_m;
use App\models\pages\pages_m;
use App\models\pages\pages_select_tags_m;
use App\models\pages\pages_translate_m;
use Redirect;
use Illuminate\Support\Facades\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\View;

class pages extends Controller
{
    public function __construct()
    {
        parent::__construct();


        //"default","article","photo_gallery","video","news"

        //$this->data["load_more_ids"]=[];
    }


    public function show_item(){


        $all_langs_titles = convert_inside_obj_to_arr($this->data["all_langs"], "lang_title");

        $page_segment=2;

        if ($this->lang_id > 1)
        {
            $page_segment=3;
        }
        $page_slug =\Request::segment($page_segment);
        $page_slug = urldecode($page_slug);

        $page_data=pages_m::get_pages(
            " 
                AND page_trans.page_slug = '$page_slug' 
            ",
            $order_by = "" ,
            $limit = "",
            $check_self_translates = false,
            $default_lang_id=$this->lang_id
        );


        if (is_array($page_data) && count($page_data)) {
            $page_data = $page_data[0];
        } else {
            return abort(404);
        }


        //increase view number
        $page_obj=pages_m::find($page_data->page_id);
        $page_obj->update([
            "page_views"=>$page_obj->page_views+1
        ]);

        $this->data["page_data"] = $page_data;

        $this->data["meta_title"] = $page_data->page_title;
        $this->data["meta_desc"] = $page_data->page_title;
        $this->data["meta_keywords"] = $page_data->page_meta_keywords;


        return view('front.subviews.pages.index', $this->data);
    }


}
