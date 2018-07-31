<?php

namespace App;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\DB;

class User extends Authenticatable
{
    use Notifiable;
    use SoftDeletes;

    protected $primaryKey = 'user_id';
    protected $fillable = [
        'user_code', 'logo_id', 'sponsor_id', 'parent_id',
        'user_level', 'user_position', 'full_name','username',
        'email', 'city', 'country', 'phone', 'address','state','post_code',
        'user_type', 'password', 'remember_token',
        'block_user', 'user_active_token','user_active', 'allowed_lang_id',
        'btc_wallet_address','eth_wallet_address','ltc_wallet_address','user_balance',
        'user_status','user_status_last_check',
        'selected_lang_id'
    ];

    protected $dates = ["deleted_at"];

    protected $hidden = [
        'password', 'remember_token',
    ];


    static function get_users($additional_where = "", $order_by = "" , $limit = "")
    {
        $users = DB::select("
             select u.*
             , attach.id, attach.path, attach.alt , attach.title
             
             #joins
             from users as u
             LEFT OUTER JOIN attachments as attach on (u.logo_id = attach.id)

             #where
             where u.deleted_at is null $additional_where
             
             #order by
             $order_by
             
             #limit
             $limit ");

        return $users;

    }

    static function get_available_position($parent_user){


        $users=DB::select("
            select * 
            from users as u
            where 
            u.user_level>$parent_user->user_level AND 
            u.deleted_at is null AND 
            u.user_type='user'
        ");


        if (!isset_and_array($users)){
            return [
                "parent_id"=>$parent_user->user_id,
                "position"=>$parent_user->set_child_where
            ];
        }



    }


}
