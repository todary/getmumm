@extends("admin.main_layout")

@section("subview")

    <?php

    $header_text=show_content($admin_panel_admin_menu,"add_new_admin");
    $user_id="";
    $password_required = "required";
    if ($user_data!="") {
        $header_text="<i class='fa fa-edit'></i> ".$user_data->full_name;
        $user_id=$user_data->user_id;
        $password_required = "";
    }

    ?>

    <div class="page-bar">
        <ul class="page-breadcrumb">

            <li>
                <a href="{{url("/admin/dashboard")}}">{{show_content($admin_panel_admin_menu,"dashboard")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <a href="{{url("/admin/users/get_all_admins")}}">{{show_content($admin_panel_admin_menu,"show_all_admins")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <span>{!!$header_text!!}</span>
            </li>
        </ul>
    </div>

    @include("admin.components.msg")


    <div class="row">
        <div class="col-md-12">
            <div class="portlet box blue-hoki">
                <div class="portlet-title">
                    <div class="caption font-green-sharp">
                        <i class="fa fa-files-o font-green-sharp"></i>
                        <span class="caption-subject bold uppercase">{!!$header_text!!}</span>
                    </div>
                    <div class="actions">
                        <a href="<?= url("admin/users/save") ?>" class="btn btn-circle btn-default btn-sm">
                            <i class="fa fa-plus"></i>
                        </a>
                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
                    </div>
                </div>


                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12">
                            <form id="save_form" action="<?=url("admin/users/save/$user_id")?>" method="POST" enctype="multipart/form-data">

                                <?php

                                $normal_tags=array("email","full_name","password");

                                $attrs = generate_default_array_inputs_html(
                                    $normal_tags,
                                    $user_data,
                                    "yes",
                                    "required"
                                );

                                $attrs[0]["email"]=show_content($admin_panel_add_new_admin_page,"email");
                                $attrs[0]["full_name"]=show_content($admin_panel_add_new_admin_page,"full_name");
                                $attrs[0]["password"]=show_content($admin_panel_add_new_admin_page,"password");

                                $attrs[2]["password"]=$password_required;
                                $attrs[3]["password"]="password";
                                $attrs[4]["password"]="";


                                echo
                                generate_inputs_html(
                                    reformate_arr_without_keys($attrs[0]),
                                    reformate_arr_without_keys($attrs[1]),
                                    reformate_arr_without_keys($attrs[2]),
                                    reformate_arr_without_keys($attrs[3]),
                                    reformate_arr_without_keys($attrs[4]),
                                    reformate_arr_without_keys($attrs[5])
                                );



                                ?>

                                <hr>

                                <div class="col-md-12">
                                    <?php
                                    $img_obj = isset($user_data->user_img_file) ? $user_data->user_img_file : "";

                                    echo generate_img_tags_for_form(
                                        $filed_name="user_img_file",
                                        $filed_label="user_img_file",
                                        $required_field="",
                                        $checkbox_field_name="user_img_checkbox",
                                        $need_alt_title="no",
                                        $required_alt_title="",
                                        $old_path_value="",
                                        $old_title_value="",
                                        $old_alt_value="",
                                        $recomended_size="",
                                        $disalbed="",
                                        $displayed_img_width="100",
                                        $display_label=show_content($admin_panel_add_new_admin_page,"upload_user_image"),
                                        $img_obj
                                    );
                                    ?>

                                </div>


                                {{csrf_field()}}
                                <input type="submit" value="{{show_content($admin_panel_general_keywords,"save")}}" class="col-md-4 col-md-offset-4 btn btn-primary btn-lg">
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

