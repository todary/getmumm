<?php

namespace App\models\pages;

use App\models\attachments_m;
use File;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\DB;

class pages_m extends Model
{
    use SoftDeletes;

    protected $table = "pages";

    protected $primaryKey = "page_id";

    protected $dates = ["deleted_at"];

    protected $fillable = [
        'cat_id', 'small_img_id', 'big_img_id', 'page_slider',
        'page_type', 'related_pages', 'show_in_menu', 'show_in_userpanel','show_in_userpanel_left_side',
        'hide_page', 'page_views', 'page_stars', 'page_order'
    ];

    static $this_lang_id=0;

    static function get_pages($additional_where = "", $order_by = " order by page.page_order" , $limit = "",$check_self_translates = false,$default_lang_id=1,$load_slider=false)
    {

        if(self::$this_lang_id!=0){
            $default_lang_id=self::$this_lang_id;
        }

        $results = DB::select("
            
            select 
            page.*,
            page_trans.*,
            page_trans.id as 'trans_id',
            page.created_at as 'page_created_at',


            #small_img
            small_page_img.path as small_img_path, small_page_img.title as small_img_title, small_page_img.alt as small_img_alt
             
            #big_img
            ,big_page_img.path as big_img_path, big_page_img.title as big_img_title, big_page_img.alt as big_img_alt
             
            
            FROM `pages` as page
            inner join pages_translate as page_trans on (page.page_id = page_trans.page_id AND page_trans.deleted_at is null  and page_trans.lang_id = $default_lang_id)

            LEFT OUTER JOIN attachments small_page_img on (page.small_img_id = small_page_img.id)
            LEFT OUTER JOIN attachments big_page_img on (page.big_img_id = big_page_img.id)
    
            #where
            where page.deleted_at is null  $additional_where
             
            #order by
            $order_by
             
            #limit
            $limit
        
        ");

        if ((is_array($results) && count($results) == 1)||$load_slider)
        {
            foreach($results as $key => $page)
            {
                //get slider data
                $slider_ids = json_decode($page->page_slider);
                $page->slider_imgs = array();
                if (is_array($slider_ids)&&  count($slider_ids) >0) {

                    $slider_imgs = attachments_m::whereIn("id",$slider_ids)->get()->all();
                    $page->slider_imgs=$slider_imgs;
                }

            }

        }

        return $results;
    }


}
