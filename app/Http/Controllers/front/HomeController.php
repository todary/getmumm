<?php

namespace App\Http\Controllers\front;


use App\Http\Controllers\admin\matches;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\models\ads_m;
use App\models\articles_m;
use App\models\category_m;
use App\models\cities_m;
use App\models\comments_m;
use App\models\pages\pages_m;
use App\models\settings_m;
use App\models\shop\shops_m;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\View\View;

class HomeController extends Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index(Request $request, $lang_title="")
    {
        $this->data["request_obj"]=(object)$request->all();

        $this->data["cat_id"] = $request->get('cat_id');
        $this->data["categories"] = category_m::get_all_cats(" AND cat.cat_type = 'article'");

        $this->data["articles"]=articles_m::get_all_article(10, $request);

        return view("front.subviews.index",$this->data);
    }

    public function get_article(Request $request, $article_id)
    {

        $this->data["article_data"] = articles_m::get_article(" AND article.article_id=$article_id");
        if(!isset_and_array($this->data["article_data"])){
            return abort(404);
        }
        $this->data["article_data"]=$this->data["article_data"][0];

        $this->data["comment_data"]=comments_m::where('comment_article_id',$article_id)->get();

        return view("front.subviews.single_article",$this->data);


    }


    public function comment_article(Request $request, $article_id)
    {

        $article = articles_m::findOrFail($article_id);

        $data =[];
        $data['comment_article_id'] =$article_id;
        $data['comment_text'] =$request->get('comment_text');

        if(isset($this->user_id)){
            $data['comment_user_id'] = $this->user_id;
        }
        comments_m::create($data);

        return Redirect::to('article/'.$article_id)->send();

    }

}
