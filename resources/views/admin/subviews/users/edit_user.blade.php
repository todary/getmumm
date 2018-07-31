@extends("admin.main_layout")
@section("subview")

    <div class="page-bar">
        <ul class="page-breadcrumb">

            <li>
                <a href="{{url("/user/dashboard")}}">{{show_content($admin_panel_admin_menu,"dashboard")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <a href="{{url("/admin/users/list_users")}}">{{show_content($admin_panel_admin_menu,"list_users")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <span>{{show_content($admin_panel_edit_user_data,"header")}}</span>
            </li>
        </ul>
    </div>

    @include("user.components.msg")

    <div class="row">
        <div class="col-md-12">
            <div class="portlet box blue-hoki">
                <div class="portlet-title">
                    <div class="caption font-green-sharp">
                        <i class="fa fa-user font-green-sharp"></i>
                        <span class="caption-subject bold uppercase">{{show_content($admin_panel_edit_user_data,"header")}}</span>
                    </div>
                    <div class="actions">
                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
                    </div>
                </div>


                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12">

                            <form id="save_form" action="{{url("/admin/users/edit_user?user_id=$user_obj->user_id")}}" method="POST" enctype="multipart/form-data">


                                <?php

                                $normal_tags=[
                                    'username','full_name','email',
                                    'phone','address','country',
                                    'city','state','post_code','password'
                                ];

                                $attrs = generate_default_array_inputs_html(
                                    $normal_tags,
                                    $user_obj,
                                    "yes",
                                    "",
                                    "4"
                                );

                                $attrs[0]["username"]=show_content($admin_panel_edit_user_data,"username");
                                $attrs[0]["full_name"]=show_content($admin_panel_edit_user_data,"full_name");
                                $attrs[0]["email"]=show_content($admin_panel_edit_user_data,"email");
                                $attrs[0]["phone"]=show_content($admin_panel_edit_user_data,"phone");
                                $attrs[0]["address"]=show_content($admin_panel_edit_user_data,"address");
                                $attrs[0]["country"]=show_content($admin_panel_edit_user_data,"country");
                                $attrs[0]["city"]=show_content($admin_panel_edit_user_data,"city");
                                $attrs[0]["state"]=show_content($admin_panel_edit_user_data,"state");
                                $attrs[0]["post_code"]=show_content($admin_panel_edit_user_data,"post_code");
                                $attrs[0]["password"]=show_content($admin_panel_edit_user_data,"password");


                                $attrs[4]["password"]="";

                                $attrs[2]["username"]="required";
                                $attrs[2]["full_name"]="required";
                                $attrs[2]["email"]="required";

                                $attrs[3]["email"]="email";
                                $attrs[3]["password"]="password";

                                $attrs[6]["address"]="4";
                                $attrs[6]["password"]="4";
                                $attrs[6]["city"]="4";
                                $attrs[6]["state"]="4";
                                $attrs[6]["post_code"]="4";

                                $divided_attrs=attrs_divider($attrs,7,[
                                    ['username','full_name','email','phone','address'],
                                    ['city','state','post_code','password']
                                ]);

                                echo
                                generate_inputs_html(
                                    reformate_arr_without_keys($divided_attrs[0][0]),
                                    reformate_arr_without_keys($divided_attrs[0][1]),
                                    reformate_arr_without_keys($divided_attrs[0][2]),
                                    reformate_arr_without_keys($divided_attrs[0][3]),
                                    reformate_arr_without_keys($divided_attrs[0][4]),
                                    reformate_arr_without_keys($divided_attrs[0][5]),
                                    reformate_arr_without_keys($divided_attrs[0][6])
                                );


                                echo generate_select_tags(
                                    $field_name="country",
                                    $label_name=show_content($admin_panel_edit_user_data,"country"),
                                    $text=list_countries(),
                                    $values=list_countries(),
                                    $selected_value=[""],
                                    $class="form-control",
                                    $multiple="",
                                    $required="",
                                    $disabled = "",
                                    $data = $user_obj,
                                    $grid = "col-md-4",
                                    $hide_label=false,
                                    $remove_multiple = false
                                );

                                echo
                                generate_inputs_html(
                                    reformate_arr_without_keys($divided_attrs[1][0]),
                                    reformate_arr_without_keys($divided_attrs[1][1]),
                                    reformate_arr_without_keys($divided_attrs[1][2]),
                                    reformate_arr_without_keys($divided_attrs[1][3]),
                                    reformate_arr_without_keys($divided_attrs[1][4]),
                                    reformate_arr_without_keys($divided_attrs[1][5]),
                                    reformate_arr_without_keys($divided_attrs[1][6])
                                );

                                ?>


                                <hr>
                                <?php

                                echo generate_img_tags_for_form(
                                    $filed_name="user_img_file",
                                    $filed_label="user_img_file",
                                    $required_field='accept="image/*"',
                                    $checkbox_field_name="user_img_checkbox",
                                    $need_alt_title="no",
                                    $required_alt_title="",
                                    $old_path_value="",
                                    $old_title_value="",
                                    $old_alt_value="",
                                    $recomended_size="",
                                    $disalbed="",
                                    $displayed_img_width="100",
                                    $display_label=show_content($admin_panel_edit_user_data,"upload_profile_image"),
                                    $user_img_obj
                                );
                                ?>


                                {{csrf_field()}}
                                <input id="submit" type="submit" value="{{show_content($admin_panel_general_keywords,"edit")}}" class="col-md-4 col-md-offset-4 btn btn-primary btn-lg">
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection