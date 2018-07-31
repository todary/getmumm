@extends("admin.main_layout")

@section("subview")

    <input type="hidden" class="all_langs_titles" value="{{json_encode(convert_inside_obj_to_arr($all_langs,"lang_title"))}}">

	<?php
		$header_text="Add New ";
		$page_id="";

		if ($page_data!="")
		{
			$header_text="<i class='fa fa-edit'></i> '".$page_data->page_title."'";
			$page_id=$page_data->page_id;
		}
	?>

    <div class="page-bar">
        <ul class="page-breadcrumb">

            <li>
                <a href="{{url("/admin/dashboard")}}">{{show_content($admin_panel_admin_menu,"dashboard")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <a href="{{url("/admin/pages/show_all/$page_type")}}">{{capitalize_string($page_type)}}</a>
                <i class="fa fa-circle"></i>
            </li>


            <li>
                <span>{!!$header_text!!}</span>
            </li>
        </ul>
    </div>

    @include("admin.components.msg")

    <div class="portlet box blue-hoki">
        <div class="portlet-title">
            <div class="caption font-green-sharp">
                <i class="fa fa-files-o font-green-sharp"></i>
                <span class="caption-subject bold uppercase">
                    {!!$header_text!!}
                </span>
            </div>
            <div class="actions">
                <a href="<?= url("admin/pages/save_page/$page_type") ?>" class="btn btn-circle btn-default btn-sm">
                    <i class="fa fa-plus"></i>
                </a>
                <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
            </div>
        </div>


        <div class="portlet-body">
            <div class="row">
                <div class="col-md-12">

                    <form id="save_form" action="<?=url("admin/pages/save_page/$page_type/$page_id")?>" method="POST" enctype="multipart/form-data">

                        <div class="panel panel-info">
                            <div class="panel-heading">
                                {{show_content($admin_panel_add_new_page_page,"page_data")}}
                            </div>
                            <div class="panel-body">
                                <div class="panel-group" id="accordion">
                                    <?php foreach ($all_langs as $lang_key => $lang): ?>
                                        <?php
                                            $lang_id=$lang->lang_id;
                                        ?>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" href="#collapse{{$lang_id}}">
                                            <h4 class="panel-title">
                                                <a style="cursor: pointer;">
                                                    {{show_content($admin_panel_general_keywords,"please_fill_fields")}}
                                                </a>
                                            </h4>
                                        </div>


                                            <?php

                                                $lang_id=$lang->lang_id;

                                                $collapse_in = "";
                                                if ($lang_key == 0)
                                                {
                                                    $collapse_in = "in";
                                                }

                                                $lang_img_url = url($lang->lang_img_path);
                                            ?>

                                            <div id="collapse{{$lang_id}}" class="panel-collapse  collapse <?php echo ($lang_key==0)?"in":""; ?>">
                                                <div class="panel-body">
                                                    <div>

                                                        <?php

                                                        $translate_data=array();


                                                        $current_row = $all_page_translate_rows->filter(function ($value, $key) use($lang_id) {
                                                            if ($value->lang_id == $lang_id)
                                                            {
                                                                return $value;
                                                            }

                                                        });

                                                        if(is_object($current_row->first())){
                                                            $translate_data=$current_row->first();
                                                        }


                                                        $required=($lang_key==0)?"required":"";

                                                        $normal_tags=[
                                                            "page_title",
                                                            "page_body",
                                                        ];


                                                        $attrs = generate_default_array_inputs_html(
                                                            $normal_tags,
                                                            $translate_data,
                                                            "yes",
                                                            $required,
                                                            "4"
                                                        );


                                                        foreach ($attrs[1] as $key => $value) {
                                                            $attrs[1][$key].="[]";
                                                        }

                                                        $attrs[0]["page_title"]=show_content($admin_panel_add_new_page_page,"title");
                                                        $attrs[0]["page_body"]=show_content($admin_panel_add_new_page_page,"description");

                                                        $attrs[3]["page_body"]="textarea";
                                                        $attrs[5]["page_body"].=" ckeditor";


                                                        $attrs[6]["page_title"]="12";
                                                        $attrs[6]["page_body"]="12";


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

                                                    </div>
                                                </div>
                                            </div>


                                    </div>
                                    <?php endforeach; ?>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-info">
                            <div class="panel-heading">{{show_content($admin_panel_add_new_page_page,"page_images")}}</div>
                            <div class="panel-body">
                                <?php
                                    if(is_array($big_img_width_height)){
                                        $img_obj = isset($page_data->page_big_img) ? $page_data->page_big_img : "";

                                        echo generate_img_tags_for_form(
                                            $filed_name="big_img_file",
                                            $filed_label="big_img_file",
                                            $required_field="",
                                            $checkbox_field_name="big_img_checkbox",
                                            $need_alt_title="no",
                                            $required_alt_title="",
                                            $old_path_value="",
                                            $old_title_value="",
                                            $old_alt_value="",
                                            $recomended_size=implode(",",array_keys($big_img_width_height))." ".implode(",",$big_img_width_height),
                                            $disalbed="",
                                            $displayed_img_width="100",
                                            $display_label=show_content($admin_panel_add_new_page_page,"upload_big_image"),
                                            $img_obj
                                        );
                                    }
                                ?>
                            </div>
                        </div>

                        {{csrf_field()}}
                        <input id="submit" type="submit" value="{{show_content($admin_panel_general_keywords,"save")}}" class="col-md-4 col-md-offset-4 btn btn-primary btn-lg">
                    </form>

                </div>
            </div>
        </div>
    </div>

@endsection


	
