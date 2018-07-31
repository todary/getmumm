<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\DB;

class category_m extends Model
{
    use SoftDeletes;

    protected $table = "category";

    protected $primaryKey = "cat_id";

    protected $dates = ["deleted_at"];

    protected $fillable = [
        'small_img_id',
        'cat_type', 'parent_id',
        'cat_order', 'hide_cat','make_background','show_in_menu'
    ];

    static $this_lang_id=0;

    static function get_all_cats($additional_where = "", $order_by = "" , $limit = "",$make_it_hierarchical=false,$default_lang_id=1)
    {

        if(self::$this_lang_id!=0){
            $default_lang_id=self::$this_lang_id;
        }

        $cats = DB::select("

            SELECT 
            cat.*,
            cat_translate.*,
            cat_translate.id as 'cat_trans_id',
        
            small_img.path as 'small_img_path' ,
            small_img.alt as 'small_img_alt' ,
            small_img.title as 'small_img_title',
    
            ifnull(parent_cat_trans.cat_id ,0) as 'parent_cat_id',
            ifnull(parent_cat_trans.cat_name ,0) as 'parent_cat_name'
            
            FROM `category` as cat

            inner join category_translate as cat_translate on (cat.cat_id=cat_translate.cat_id AND cat_translate.deleted_at is null AND cat_translate.lang_id=$default_lang_id)


            LEFT OUTER JOIN category as parent_cat on (cat.parent_id = parent_cat.cat_id)
            LEFT OUTER join category_translate as parent_cat_trans on (parent_cat.cat_id = parent_cat_trans.cat_id and parent_cat_trans.lang_id = $default_lang_id)

            left outer join attachments as small_img on small_img.id=cat.small_img_id
    
            #where
            where cat.deleted_at is null $additional_where
            #order by
            $order_by

            #limit
            $limit "
        );



        return $cats;

    }

}
