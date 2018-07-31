<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\DB;

class articles_m extends Model
{


    protected $table = "articles";
    public $timestamps = false;
    protected $primaryKey = "article_id";
    protected $fillable = [
        'article_id', 'cat_id' ,'article_name', 'article_desc','attach_id','publish_article'
    ];

    static $this_lang_id = 1;


    static function get_article($additional_where = "", $order_by = "" , $limit = "")
    {
         return DB::select("
             select article.*
             , attach.id as img_id, attach.path as img_path, attach.alt as img_alt , attach.title as img_title
             
             #joins
             from articles as article
             LEFT OUTER JOIN attachments as attach on (article.attach_id = attach.id)

             #where
             where article.deleted_at is null $additional_where
             
             #order by
             $order_by
             
             #limit
             $limit ");
    }


    static function get_all_article($paginate = 0,$request = null)
    {
        $default_lang_id = self::$this_lang_id;

        $articles = articles_m::leftJoin('attachments', 'articles.attach_id', '=', 'attachments.id');

        $articles = $articles->join('category as cat', function ($query) {
            $query->on('cat.cat_id', '=', 'articles.cat_id')->whereNull('cat.deleted_at');
        })->
        join('category_translate as cat_trans', function ($query) use ($default_lang_id) {
            $query->on('cat.cat_id', '=', 'cat_trans.cat_id')->where('cat_trans.lang_id', $default_lang_id)->whereNull('cat_trans.deleted_at');
        });


        $cat_id="";


        if($request!=null){
            $cat_id = $request->get('cat_id');
        }

        if(!empty($cat_id)){
            $articles =$articles->where('articles.cat_id',$cat_id);
        }

        $articles =$articles->where('articles.publish_article',1);

        if($paginate){
            return $articles->paginate($paginate);
        }

        return $articles->get();
    }

}
