@extends("admin.main_layout")

@section("subview")

    <?php


    $header_text=show_content($admin_panel_admin_menu,"add_new_language");
    $lang_id="";

    $lang_img_id="";
    $lang_img_path="";
    $lang_img_title="";
    $lang_img_alt="";


    $disabled_upload_imgs="";
    if (is_object($lang_data)) {
        $header_text="<i class='fa fa-edit'></i> '".$lang_data->lang_title."'";
        $lang_id=$lang_data->lang_id;

        $lang_img_id=$lang_data->lang_img_id;
        if ($lang_img_id > 0)
        {
            $lang_img_path=url('/'.$lang_data->lang_img_path);
            $lang_img_title=$lang_data->lang_img_title;
            $lang_img_alt=$lang_data->lang_img_alt;
        }


        $disabled_upload_imgs="disabled";
    }


    ?>

    <div class="page-bar">
        <ul class="page-breadcrumb">

            <li>
                <a href="{{url("/admin/dashboard")}}">{{show_content($admin_panel_admin_menu,"dashboard")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <a href="{{url("/admin/langs")}}">{{show_content($admin_panel_admin_menu,"show_all_languages")}}</a>
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
                        <a href="<?= url("admin/langs/save_lang") ?>" class="btn btn-circle btn-default btn-sm">
                            <i class="fa fa-plus"></i>
                        </a>
                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
                    </div>
                </div>


                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12">

                            <form id="save_form" action="<?=url("admin/langs/save_lang/$lang_id")?>" method="POST" enctype="multipart/form-data">

                                <?php

                                $normal_tags=array("lang_title","lang_text");
                                $attrs = generate_default_array_inputs_html(
                                    $normal_tags,
                                    $lang_data,
                                    "yes",
                                    $required = "required"
                                );

                                $attrs[0]["lang_title"]=show_content($admin_panel_add_new_language_page,"lang_symbol");
                                $attrs[0]["lang_text"]=show_content($admin_panel_add_new_language_page,"lang_display_text");

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

                                <div class="col-md-12">


                                <?=
                                    generate_img_tags_for_form(
                                        "lang_img_file[]",
                                        "lang_img_file",
                                        "",
                                        "lang_img_checkbox",
                                        "no",
                                        "",
                                        $lang_img_path,
                                        $lang_img_title,
                                        $lang_img_alt,
                                        "",
                                        $disabled_upload_imgs,
                                        $displayed_img_width="100",
                                        $display_label=show_content($admin_panel_add_new_language_page,"upload_language_icon")
                                    )
                                ?>

                                </div>


                                    {{csrf_field()}}
                                <input id="submit" type="submit" value="{{show_content($admin_panel_general_keywords,"save")}}" class="col-md-4 col-md-offset-4 btn btn-primary btn-lg" style="margin-top: 10px;">

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection



