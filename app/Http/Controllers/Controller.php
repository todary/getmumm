<?php

namespace App\Http\Controllers;

use App\helpers\utility;
use App\models\langs_m;
use App\models\pages\pages_m;
use App\User;
use Cache;
use Carbon\Carbon;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

use Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Session;
use Intervention\Image\Facades\Image;

//models
use App\models\attachments_m;
use Request;
use Schema;
use View;

//END models


class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public $data=array();
    public $user_id=1;
    public $related_user_id=1;
    public $lang_id=1;
    public $trips_bag=[];

    public function __construct()
    {

        $current_user = Auth::user();
        $this->data["current_user"] = null;

        if (isset($current_user))
        {
            $this->data["current_user"] = User::get_users(" AND u.user_id = ".Auth::user()->user_id." ");
            $this->data["current_user"] = $this->data["current_user"][0];
            $this->user_id = $this->data["current_user"]->user_id;
        }

        $session_lang_id=Session::get("lang_id");
        if(!empty($session_lang_id)){
            $this->lang_id=$session_lang_id;
        }

        $this->data["all_langs"] = langs_m::get_all_langs();
        $this->data["lang_ids"] = $this->data["all_langs"];
        $this->data["current_lang"]=langs_m::get_all_langs(" AND lang.lang_id=$this->lang_id","yes");

        $all_langs_titles=convert_inside_obj_to_arr($this->data["all_langs"],"lang_title");
        $change_lang=Input::get("lang_title","");

        if(in_array($change_lang,$all_langs_titles)){
            $lang_row=langs_m::get_all_langs(" AND lang.lang_title='".$change_lang."'");
            if(isset($lang_row[0])&&is_object($lang_row[0])){
                $this->lang_id=$lang_row[0]->lang_id;
                $this->data["current_lang"]=langs_m::get_all_langs(" AND lang.lang_id=$this->lang_id","yes");
                Session::put("lang_id",$this->lang_id);
            }
        }


        $this->data["lang_url_segment"]="";
        if($this->lang_id!=1){
            $this->data["lang_url_segment"]=$this->data["current_lang"]->lang_title;
        }


        //csrf increase time
        $config = config('session');
        $config["lifetime"] = 7200;

        #region get default pages
        $this->data["default_pages"]  = pages_m::get_pages(
            " 
            AND page.page_type='default' 
            AND page.hide_page=0 
            AND page_trans.page_title!=''
            order by  page_order           
            ",
            $order_by = "" ,
            $limit = "",
            $check_self_translates = false,
            $default_lang_id=$this->lang_id
        );

        #endregion



        $slider_arr = array();

        $this->general_get_content(
            [
                "homepage","contact_us"
            ]
            ,$slider_arr);
            
//        $this->data["meta_title"]=show_content($this->data["index"],"title");
//        $this->data["meta_desc"]=show_content($this->data["index"],"title");
//        $this->data["meta_keywords"]=show_content($this->data["index"],"title");

        $this->data["meta_title"]="getmumm";
        $this->data["meta_desc"]="getmumm";
        $this->data["meta_keywords"]="getmumm";


    }

    /**
     * @param $request >> received by form
     * @param int $user_id >> from current session
     * @param $file_name >> from input file name
     * @param $folder >> /folder_name under uploads
     * @param int $width
     * @param int $height
     * @param array $ext_arr >> additional array of allowed extensions
     * @param bool $return_only_name
     * @param string $absolute_upload_path
     * @return array|string >> array if uploaded
     */
    public function cms_upload($request, $user_id = 0, $file_name, $folder, $width = 0, $height = 0, $ext_arr = array(), $return_only_name=false, $absolute_upload_path="")
    {

        $uploaded = array();
        if (!empty($file_name) && isset($request))
        {

            if ($file_objs = $request->file($file_name))
            {
                if(!is_array($file_objs)){
                    $file_objs=array($file_objs);
                }

                foreach ($file_objs as $key => $file_obj) {

                    if ($file_obj == null){
                        continue;
                    }

                    $uploaded_file_ext = $file_obj->getClientOriginalExtension();
                    $uploaded_origin_file_name = $file_obj->getClientOriginalName().'.'.$uploaded_file_ext;
                    $uploaded_file_encrypted_name = md5($user_id.time().$file_name.$file_obj->getClientOriginalName()).".".$uploaded_file_ext;
                    $uploaded_file_path = "uploads".$folder;

                    $uploaded_full_path_to_file = $uploaded_file_path.'/'.$uploaded_file_encrypted_name;

                    if ($absolute_upload_path != "")
                    {
                        $uploaded_file_path = $absolute_upload_path;
                    }

                    if (in_array($uploaded_file_ext, array("mp3","mp4","jpeg","png","jpg","MP4","JPEG","PNG","JPG","xls","XLS","doc","docx","zip","rar","xlsx","XLSX","csv","CSV","pdf","PDF","gif","GIF"))||(count($ext_arr)>0 && in_array($uploaded_file_ext, $ext_arr)))
                    {
                        $file_obj->move($uploaded_file_path,$uploaded_file_encrypted_name);

                        if ($width >0 && $height >0)
                        {
                            $img = Image::make(($uploaded_full_path_to_file))->resize($width, $height);
                            $img->save(($uploaded_full_path_to_file),70);
                        }

                        if ($return_only_name == true || $return_only_name == "true")
                        {
                            $uploaded[] = $uploaded_file_encrypted_name;
                        }
                        else{
                            $uploaded[] = $uploaded_full_path_to_file;
                        }

                    }
                    else
                    {
                        return "not allowed type";
                    }

                }


            }
            else{
                return "There is not file to upload";
            }


        }
        else{
            return "There is not input file or comming request !!";
        }

        return $uploaded;

    }


    /**
     * @param $request >> received by form
     * @param null $item_id >> null for insert || id for edit
     * @param $img_file_name >> from input file name
     * @param $new_title
     * @param $new_alt
     * @param $upload_new_img_check
     * @param $upload_file_path >> /folder_name
     * @param $width
     * @param $height
     * @param $photo_id_for_edit
     * @param array $ext_arr
     * @return int|string
     */
    public function general_save_img($request , $item_id=null, $img_file_name, $new_title, $new_alt, $upload_new_img_check, $upload_file_path, $width, $height, $photo_id_for_edit, $ext_arr=array())
    {

        $new_title=($new_title==null)?"":$new_title;
        $new_alt=($new_alt==null)?"":$new_alt;

        //$item_id could be pro id , cat_id any thing
        $photo_id="not_enter";

        $upload_img=$this->cms_upload($request,$this->user_id,$img_file_name,$upload_file_path,$width,$height,$ext_arr);

        if ($item_id==null)
        {
            //save attachment first

            if (!is_array($upload_img) || ( is_array($upload_img) && !(count($upload_img)>0) ) )
            {
                return 0;
            }

            //save main photo
            $upload_img=$upload_img[0];

            $photo_id=attachments_m::save_img(null,$new_title,$new_alt,$upload_img);

            return $photo_id;
        }//end check of upload file


        if ($item_id!=null&&$photo_id_for_edit>0) {
            //edit photo data
            //update image info

            if (is_array($upload_img) && $upload_new_img_check=="on")
            {
                $photo_id=attachments_m::save_img($photo_id_for_edit,$new_title,$new_alt,$upload_img[0]);
                return $photo_id;
            }
            $photo_id=attachments_m::save_img($photo_id_for_edit,$new_title,$new_alt);
        }
        if ($item_id!=null&&$photo_id_for_edit==0) {
            //add new photo data if edit item has new image
            if (is_array($upload_img) && $upload_new_img_check=="on")
            {

                $photo_id=attachments_m::save_img($photo_id_for_edit,$new_title,$new_alt,$upload_img[0]);
                return $photo_id;
            }
            elseif (is_array($upload_img) && count($upload_img) > 0)
            {
                $photo_id=attachments_m::save_img($photo_id_for_edit,$new_title,$new_alt,$upload_img[0]);
                return $photo_id;
            }
            else{
                return $photo_id_for_edit;
            }

        }

        return $photo_id;
    }


    /**
     * @param $request >> from form
     * @param string $field_name >> form_input_file_name
     * @param int $width
     * @param int $height
     * @param $new_title_arr
     * @param $new_alt_arr
     * @param string $json_values_of_slider
     * @param string $path >> /folder_name
     * @param string $old_title_arr old values of existing imgages
     * @param string $old_alt_arr old values of existing images
     * @return array|string
     */
    public function general_save_slider($request, $field_name="", $width=0, $height=0, $new_title_arr, $new_alt_arr, $json_values_of_slider="",$old_title_arr,$old_alt_arr,$path="")
    {

        if ($path=="") {
            $path=$field_name;
        }
        //upload new files
        $slider_file = $this->cms_upload($request , $this->user_id,"$field_name",$folder="$path",$width,$height);//array

        //update old_photos
        if (is_array($json_values_of_slider)&&count($json_values_of_slider)) {
            foreach ($json_values_of_slider as $key => $value) {
                $save_img_title="";
                if(isset($old_title_arr[$key])){
                    $save_img_title=$old_title_arr[$key];
                }

                $save_img_alt="";
                if(isset($old_alt_arr[$key])){
                    $save_img_alt=$old_alt_arr[$key];
                }

                $old_photo_id = attachments_m::save_img($value,$save_img_title,$save_img_alt);
            }
        }

        //add new photos
        if (count($slider_file)&&is_array($slider_file)) {
            foreach ($slider_file as $key => $value) {
                $save_img_title="";
                if(isset($new_title_arr[$key])){
                    $save_img_title=$new_title_arr[$key];
                }

                $save_img_alt="";
                if(isset($new_alt_arr[$key])){
                    $save_img_alt=$new_alt_arr[$key];
                }

                $json_values_of_slider[] = attachments_m::save_img(null,$save_img_title,$save_img_alt,$value);
            }//end foreach
        }

        return $json_values_of_slider;
    }

    /**
     * @param arr_of_str $content_row_title array of content_titles
     * important note the row you can fetch coreectly is the row the saved
     * by general_save_content
     *
     * $slider_imgs_field_arr== $slider_imgs_arr["edit_index_page"]=array("slider1","slider2","slider3")
     *
     */
    public function general_get_content($content_row_title=array(),$slider_imgs_field_arr=array()) {

        foreach ($content_row_title as $key => $title) {

            $this->data["$title"] = "";
        }

    }

    /**
     * @param array $emails >> array("aa@aa.com","cc@cc.com")
     * @param string $data >> string for default , array for advanced view
     * @param string $subject >> subject of your emails
     * @param string $path_to_file >> valid full path to attachment if exist
     * @return mixed
     */
    public function _send_email_to_custom($emails = array() , $data = "" , $subject = "", $sender = "info@coincome.com" , $path_to_file = "" )
    {
        return utility::send_email_to_custom($emails = array() , $data = "" , $subject = "", $sender = "info@coincome.com" , $path_to_file = "" );
    }

    public function _send_email_to_all_users_type($user_type = "" , $data = "" , $subject = "", $sender = "info@misrtravel.net" , $path_to_file = "" )
    {
        if (!empty($user_type))
        {

            if ($user_type == "admin")
            {
                $all_users = User::get_users(" AND u.user_type = 'admin' OR u.user_type = 'factory_admin' ");
            }
            elseif ($user_type == "branch")
            {
                $all_users = User::get_users(" AND u.user_type = 'branch' OR u.user_type = 'branch_admin' ");
            }
            else{
                $all_users = User::where("user_type",$user_type)->get()->all();
            }

            if (is_array($all_users) && count($all_users))
            {
                $all_users_email = convert_inside_obj_to_arr($all_users,'email');
                if (is_array($all_users_email) && count($all_users_email))
                {

                    utility::send_email_to_custom($emails = $all_users_email , $data, $subject, $sender, $path_to_file);
                }

            }

        }

    }

    public function general_ajax_loader($model="",$model_static_function="",$func_params=[],$return_data_var_name="rows",$view_path=""){

        if($model==""||$model_static_function==""||$view_path==""){
            return "";
        }

        $this->data["$return_data_var_name"]=call_user_func_array("$model::$model_static_function",$func_params);

        return View::make($view_path,$this->data)->render();
    }

    public function send_user_notification($not_title = "" , $not_type = "" , $user_id = "")
    {
        if (!empty($not_title) && !empty($user_id))
        {
            notification_m::create([
                "not_title" => $not_title,
                "not_type" => $not_type,
                "not_to_userid" => $user_id
            ]);
        }
    }

    public function send_all_user_type_notifications($not_title = "" , $not_type = "" , $user_type = "")
    {
        if (!empty($not_title) && !empty($user_type))
        {

            if ($user_type == "admin")
            {
                $all_users = User::get_users(" AND u.user_type = 'admin' OR u.user_type = 'factory_admin' ");
            }
            elseif ($user_type == "branch")
            {
                $all_users = User::get_users(" AND u.user_type = 'branch' OR u.user_type = 'branch_admin' ");
            }
            else{
                $all_users = User::where("user_type",$user_type)->get()->all();
            }


            foreach($all_users as $key => $user)
            {
                $this->send_user_notification($not_title, $not_type, $user->user_id);
            }

        }
    }

    public function get_user_permissions()
    {

        $get_permissions = [];
        $get_permissions = collect($get_permissions)->groupBy('page_name');
        $get_permissions = $get_permissions->all();

        return $get_permissions;
    }

    public function check_user_permission($page = "" , $action = "")
    {
        return true;
        if (!empty($page) && !empty($action))
        {
            $get_permission = permissions_m::get_permissions( " where per.user_id =  ".$this->user_id." 
                        AND per_page.page_name = '$page'" );
            if (is_array($get_permission) && count($get_permission))
            {
                $get_permission = $get_permission[0];
                if (isset($get_permission->$action) && $get_permission->$action)
                {
                    return true;
                }

                $additional_permissions=json_decode($get_permission->additional_permissions);
                if (is_array($additional_permissions)&&in_array($action,$additional_permissions))
                {
                    return true;
                }

            }
        }
        return false;
    }

    public function cleaning_input($request_data, $except = array())
    {
        foreach($request_data as $key => $value)
        {
            if (count($except) && in_array($key,$except))
            {
                continue;
            }
            $request_data[$key] = clean($value);
        }

        return $request_data;
    }

    public function ckeditor_upload(){
        if(isset($_FILES['upload'])){
            if(!file_exists("uploads/ckeditor")){
                mkdir("uploads/ckeditor");
            }

            $filen = $_FILES['upload']['tmp_name'];
            $con_images = "uploads/ckeditor/".$_FILES['upload']['name'];
            move_uploaded_file($filen, $con_images );

            $url = url($con_images);

            $funcNum = $_GET['CKEditorFuncNum'] ;
            // Optional: instance name (might be used to load a specific configuration file or anything else).
            $CKEditor = $_GET['CKEditor'] ;
            // Optional: might be used to provide localized messages.
            $langCode = $_GET['langCode'] ;

            // Usually you will only assign something here if the file could not be uploaded.
            $message = '';
            echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($funcNum, '$url', '$message');</script>";
        }
    }

    public function ckeditor_browse(){
        $this->data["search_for_file"]=Input::get("search_for_file");


        return view("front.subviews.browse_files",$this->data);
    }

    public function get_node_childs($origin_node,$user_code,$all_users_by_user_code=[],$all_users_by_parent_id=[]){
        $res_arr=[];
        $child_nodes=[];

        if(count($all_users_by_parent_id)&&isset($all_users_by_parent_id[$user_code])){
            $child_nodes=$all_users_by_parent_id[$user_code]->sortBy("user_position")->all();
        }
        elseif(count($all_users_by_parent_id)==0){
            $child_nodes=User::
            select("users.*",'attachments.path')->
            leftJoin("attachments","attachments.id","=","users.logo_id")->
            where("parent_id",$user_code)->orderBy("user_position")->get();
        }

        if (count($all_users_by_user_code)&&isset($all_users_by_user_code[$user_code])){
            $parent_node_obj=$all_users_by_user_code[$user_code]->all()[0];
        }
        elseif(count($all_users_by_user_code)==0){
            $parent_node_obj = User::
            select("users.*",'attachments.path')->
            leftJoin("attachments","attachments.id","=","users.logo_id")->
            where("user_code",$user_code)->get()->first();
        }


        $parent_status = $this->get_user_status($parent_node_obj);


        if(count($child_nodes))
        {
            if ($parent_status == "active" || $parent_status == "half_active" || $parent_status == "expired")
            {
                if(isset($child_nodes[0])&&$child_nodes[0]->user_position=="right"&&count($child_nodes)==1){
                    $res_arr[]=new User();
                }
            }


            foreach($child_nodes as $key=>$child_node)
            {
                // calculate point values of his childs
//                $child_node->user_point_values = User::get_user_point_values(" and
//                    user_id = $child_node->user_id
//                    AND created_at >= '$origin_node->max_points_date'
//                ");
//                $child_node->user_point_values = User::get_user_point_values(" and
//                    user_id = $child_node->user_id
//                    AND created_at >= ''
//                ");

                $child_node->active=$this->get_user_status($child_node);

                $res_arr[$child_node->user_code]["data"]=$child_node;

                $res_arr[$child_node->user_code]["childs"]=$this->get_node_childs($origin_node,$child_node->user_code,$all_users_by_user_code,$all_users_by_parent_id);
            }

            if ($parent_status == "active" || $parent_status == "half_active" || $parent_status == "expired")
            {
                if(isset($child_nodes[0])&&$child_nodes[0]->user_position=="left"&&count($child_nodes)==1){
                    $res_arr[]=new User();
                }
            }


        }
        else{

            if ($parent_status == "active" || $parent_status == "half_active" || $parent_status == "expired")
            {
                $res_arr[]=new User();
                $res_arr[]=new User();
            }
            else{
                //$res_arr[]="not_access";
                $res_arr[]=new User();
            }

        }

        return $res_arr;
    }

    public function get_user_status($user_obj)
    {

        return network_utilities::get_user_status($user_obj);
    }

    public function get_user_by_code(\Illuminate\Http\Request $request){
        $outputs=[];

        $user_code=clean($request->get("user_code"));

        $user=User::where("user_code",$user_code)->get()->first();


        if(!is_object($user)){
            $outputs["msg"]="<div class='alert alert-danger'> Invalid user code</div>";
            echo json_encode($outputs);
            return;
        }

        $outputs["msg"]="<div class='alert alert-success'>User (".$user->full_name.") is Found</div>";
        $return_user=new \stdClass();
        $return_user->user_id=$user->user_id;
        $return_user->aim_coins_bank=$user->aim_coins_bank;
        $return_user->cash_bank=$user->cash_bank;

        $outputs["user"]=$return_user;


        echo json_encode($outputs);
    }



}
