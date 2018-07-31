<?php

namespace App\helpers;

use App\models\notification_m;
use App\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;

class utility
{

    public static function get_admins($ids_only=false){
        $admins=User::whereIn("user_type",["admin","dev"])->get();

        if ($ids_only){
            return $admins->pluck("user_id")->all();
        }

        return $admins;
    }

    public static function send_notification_to_users($user_ids,$not_title,$not_type){
        if(!isset_and_array($user_ids))return;

        $notifications_rows=[];

        $now=Carbon::now();

        foreach($user_ids as $user_id){
            $notifications_rows[]=[
                'not_title'=>$not_title,
                'not_type'=>$not_type,
                'not_to_userid'=>$user_id,
                'created_at'=>$now
            ];
        }

        notification_m::insert($notifications_rows);
    }

    public static function send_email_to_custom(
        $emails = array() ,
        $data = "" ,
        $subject = "",
        $sender = "" ,
        $path_to_file = "",
        $name="",
        $reply_to="",
        $reply_to_name=""
    )
    {

        if(empty($sender)){
            $sender="abanop@globalictconnections.com";
        }


        if (is_array($emails) && count($emails) > 0)
        {

            if (is_array($data) && count($data) > 0)
            {
                $view = "email.advanced";
            }
            else{
                $data = ["default"=>$data];
                $view = "email.default";
            }

            Mail::send($view,$data,function ($message) use (
                $emails , $subject, $sender, $path_to_file,$name,$reply_to,$reply_to_name
            ) {

                // changed once for every site
                if($name!=""){
                    $message->from($address = $sender,$name);
                }
                else{
                    $message->from($address = $sender);
                }

                if($reply_to!=""&&$reply_to_name!=""){
                    $message->replyTo($reply_to, $reply_to_name);
                }


                $message->sender($address = $sender);

                if ($path_to_file != "" && is_file($path_to_file))
                {
                    $message->attach($path_to_file);
                }

                $message->to($emails)->subject($subject);

            });

        }

        return Mail:: failures();
    }

    public static function send_email_to_dev($desc){

        self::send_email_to_custom(
            ["abanoub.metyas.btm@gmail.com"],
            $desc,
            "error is happen at coincome at ".date("Y-m-d H:i:s")
        );

    }



}