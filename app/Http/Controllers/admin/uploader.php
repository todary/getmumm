<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class uploader extends Controller
{

    public function __construct()
    {
        parent::__construct();

    }


    //uploader
    public function index()
    {

        return view("admin.subviews.uploader.upload")->with($this->data);
    }


    public function load_files(Request $request)
    {
        // for multiple files
        $uploaded = $this->cms_upload(
            $request,
            $user_id = $this->user_id,
            $file_name = "file",
            $folder = "/general_uploader",
            $width = 0, $height = 0);
        echo $uploaded[0];
    }


}
