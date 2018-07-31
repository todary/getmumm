@extends("admin.main_layout")

@section("subview")

    <?php
    $header_text=show_content($admin_panel_admin_menu,"add_new_category");
    $cat_id="";
    $parent_id="0";
    $parent_or_child="0";

    if ($cat_data!="") {
        $header_text="Edit ".$cat_data->cat_name. " Last Edit At: ".$cat_data->updated_at;

        $cat_id=$cat_data->cat_id;
        $parent_id=$cat_data->parent_cat_id;

        if ($parent_id>0&&in_array($selected_cat_type,["article","template"])) {
            $parent_or_child="1";
        }


    }

    ?>
    <div class="page-bar">
        <ul class="page-breadcrumb">

            <li>
                <a href="{{url("/admin/dashboard")}}">{{show_content($admin_panel_admin_menu,"dashboard")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <a href="{{url("/admin/category")}}">{{show_content($admin_panel_admin_menu,"show_all_categories")}}</a>
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
                            <a href="<?= url("admin/category/save_cat") ?>" class="btn btn-circle btn-default btn-sm">
                                <i class="fa fa-plus"></i>
                            </a>

                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
                    </div>
                </div>


                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12">

                            <form id="save_form" action="<?=url("admin/category/save_cat/$selected_cat_type/$cat_id")?>" method="POST" enctype="multipart/form-data">

                                <input type="hidden" name="parent_id" value="0">

                                <div class="col-md-12">

                                    <div class="panel-group" id="accordion">

                                        <?php foreach($lang_ids as $lang_key=>$lang_item): ?>
                                        <?php
                                        $lang_id=$lang_item->lang_id;
                                        ?>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" href="#collapse{{$lang_id}}">
                                                <h4 class="panel-title" >
                                                    <a>
                                                        <img src="<?=url('/').'/'.$lang_item->lang_img_path?>" width="25"> Category Data For Lang {{$lang_item->lang_title}}
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapse{{$lang_id}}" class="panel-collapse collapse <?php echo ($lang_key==0)?"in":""; ?>">
                                                <div class="panel-body">

                                                    <input type="hidden" name="lang_id[]" value="{{$lang_id}}">
                                                    <?php

                                                    $translate_data=array();


                                                    $current_row = $cat_data_translate_rows->filter(function ($value, $key) use($lang_id) {
                                                        if ($value->lang_id == $lang_id)
                                                        {
                                                            return $value;
                                                        }

                                                    });

                                                    if(is_object($current_row->first())){
                                                        $translate_data=$current_row->first();
                                                    }


                                                    //$required=($lang_key==0)?"required":"";
                                                    $required="";

                                                    $normal_tags=array("cat_name" );

                                                    $attrs = generate_default_array_inputs_html(
                                                        $normal_tags,
                                                        $translate_data,
                                                        "yes",
                                                        $required
                                                    );


                                                    foreach ($attrs[1] as $key => $value) {
                                                        $attrs[1][$key].="[]";
                                                    }


                                                    $attrs[0]["cat_name"]="Category Name";
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

                                                </div>
                                            </div>
                                        </div>

                                        <?php endforeach;?>
                                    </div>

                                </div>

                                {{csrf_field()}}
                                <button type="submit" class="col-md-12  btn btn-primary btn-lg">Save</button>
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

