<?php

namespace App\Http\Controllers;

use App\models\attachments_m;
use App\models\support_messages_m;
use App\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class admin_controller extends dashbaord_controller
{

    public $current_user_data;
    public $user_permissions;


    public function __construct()
    {
        parent::__construct();
        $this->middleware("check_admin");
        $this->current_user_data=$this->data["current_user"];


        if($this->current_user_data->selected_lang_id>0){
            $this->lang_id=$this->current_user_data->selected_lang_id;
        }


        $this->user_permissions = $this->get_user_permissions();
        $this->data["user_permissions"] = $this->user_permissions;
        $this->data["notifications"] =[];

        $this->general_get_content(["admin_panel_admin_menu","admin_panel_general_keywords"]);
    }

}
