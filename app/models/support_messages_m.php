<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class support_messages_m extends Model
{
    use SoftDeletes;

    protected $table = "support_messages";

    protected $dates = ["deleted_at"];

    protected $fillable = [
        'msg_type','name', 'tel', 'email','msg_title' ,'message', 'current_url', 'source','other_data'

    ];
}
