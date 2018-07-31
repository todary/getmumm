<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\admin_controller;
use App\Http\Controllers\dashbaord_controller;

use App\Http\Requests;
use App\models\coins_m;
use App\models\packages\packages_m;
use App\models\packages\packages_translate_m;
use App\models\packages\user_packages_m;
use App\models\settings_m;
use App\models\user_cash\user_cash_withdraw_requests_m;
use App\models\user_coin_balance\user_coin_withdraw_requests_m;
use App\User;
use Illuminate\Http\Request;

class dashboard extends admin_controller
{

    public function __construct(){
        parent::__construct();


        $this->general_get_content([
            "admin_panel_dashboard_page",
            "admin_panel_settings_page",
        ]);
    }

    public function index()
    {


        return view("admin.subviews.dashboard.dashboard",$this->data);
    }

    public function edit_settings(Request $request){

        $settings_data=settings_m::findOrFail("1");
        $this->data["settings_data"]=$settings_data;

        if($request->method()=="POST"){
            $settings_data->update($request->all());

            return  \Redirect::to('admin/edit_settings')->with(
                ["msg"=>"<div class='alert alert-info'>Updated</div>"]
            )->send();
        }

        return view("admin.subviews.dashboard.edit_settings",$this->data);
    }


}
