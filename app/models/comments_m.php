<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\DB;

class comments_m extends Model
{


    protected $table = "comments";
    public $timestamps = false;
    protected $primaryKey = "comment_id";
    protected $fillable = [
        'comment_id', 'comment_article_id','comment_user_id','comment_text'
    ];
}
