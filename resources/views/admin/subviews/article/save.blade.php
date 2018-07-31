@extends("admin.main_layout")

@section("subview")

    <?php
    $header_text=show_content($admin_panel_admin_menu,"add_new_article");
    $article_id="";


    if ($article_data!="") {
        $header_text="<i class='fa fa-edit'></i> ".$article_data->article_name;
        $article_id=$article_data->article_id;
    }
    ?>
    <div class="page-bar">
        <ul class="page-breadcrumb">

            <li>
                <a href="{{url("/admin/dashboard")}}">{{show_content($admin_panel_admin_menu,"dashboard")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <a href="{{url("/admin/category")}}">{{show_content($admin_panel_admin_menu,"show_all_Categories")}}</a>
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
                        <a href="<?= url("admin/article/save_article") ?>" class="btn btn-circle btn-default btn-sm">
                            <i class="fa fa-plus"></i>
                        </a>
                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
                    </div>
                </div>


                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12">

                            <form id="save_form" action="<?=url("admin/article/save_article/$article_id")?>" method="POST" enctype="multipart/form-data">

                                <?php


                                echo generate_select_tags(
                                    'cat_id',
                                    'Select category',
                                    collect($categories)->pluck('cat_name')->all(),
                                    collect($categories)->pluck('cat_id')->all(),
                                    [''],
                                    $class="form-control",
                                    $multiple="",
                                    $required="",
                                    $disabled = "",
                                    $data = $article_data,
                                    $grid = "col-md-12",
                                    $hide_label=false,
                                    $remove_multiple = false

                                )
                                ?>

                                    <?php

                                    $normal_tags=array('article_name','article_desc');

                                    $attrs = generate_default_array_inputs_html(
                                        $normal_tags,
                                        $article_data,
                                        "yes",
                                        "required",
                                        "4"
                                    );

                                    $attrs[0]["article_name"]='article Name';
                                    $attrs[0]["article_desc"]='article Description';
                                    $attrs[6]["article_desc"]='12';
                                    $attrs[3]["article_desc"]='textarea';
                                    $attrs[5]["article_desc"]='ckeditor';

                                    echo
                                    generate_inputs_html(
                                        reformate_arr_without_keys($attrs[0]),
                                        reformate_arr_without_keys($attrs[1]),
                                        reformate_arr_without_keys($attrs[2]),
                                        reformate_arr_without_keys($attrs[3]),
                                        reformate_arr_without_keys($attrs[4]),
                                        reformate_arr_without_keys($attrs[5]),
                                        reformate_arr_without_keys($attrs[6])
                                    );

                                    ?>


                                    <div class="col-md-12">
                                        <?php
                                        $img_obj_profile = isset($article_data->article_img_obj) ? $article_data->article_img_obj : "";
                                        echo generate_img_tags_for_form(
                                            $filed_name="img_file",
                                            $filed_label="img_file",
                                            $required_field="",
                                            $checkbox_field_name="img_checkbox",
                                            $need_alt_title="no",
                                            $required_alt_title="",
                                            $old_path_value="",
                                            $old_title_value="",
                                            $old_alt_value="",
                                            $recomended_size="",
                                            $disalbed="",
                                            $displayed_img_width="100",
                                            $display_label='Upload Profile Image',
                                            $img_obj_profile
                                        );
                                        ?>
                                    </div>


                                {{csrf_field()}}
                                <button type="submit" class="col-md-3 col-md-offset-2 btn btn-primary btn-lg">Save</button>
                                <!--general_check_validation-->

                                <div class="col-md-8 col-md-offset-2">
                                    <div class="general_check_validation_msg"></div>
                                </div>
                                <!--END general_check_validation-->

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

