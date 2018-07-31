<div class="generate_slider_tags">

    <div class="modal fade edit_img_modal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Edit Image</h4>
                </div>
                <div class="modal-body">


                    <input type="hidden" class="edit_img_id" value="">

                    <div class="form-group">
                        <label for="">Edit {{$show_as_link?"File":"Image"}}</label>
                        <input type="file" class="edit_file_at_slider" name="edit_file_at_slider" accept="{{$accept}}">
                    </div>

                    <div class="upload_new_item_msg"></div>

                    <button class="btn btn-info edit_img_at_slider_btn">Edit</button>

                </div>
            </div>
        </div>
    </div>

    <?php
        $field_name_arr=$field_name."[]";
        $alt_field=$field_name."_alt[]";
        $title_field=$field_name."_title[]";

        $old_alt_field=$field_name."_edit_alt[]";
        $old_title_field=$field_name."_edit_title[]";


        $slider_photos_ids=array();
        if (is_array($slider_photos)&&  count($slider_photos)) {
            $slider_photos_ids=convert_inside_obj_to_arr($slider_photos, "id");
        }

        $json_values_of_slider_id="json_values_of_slider_id".$field_name;
        $json_values_of_slider="json_values_of_slider".$field_name;
    ?>

    <div class="form-group">
        <div class="row-fluid">

            <div class="col-md-13 slider_imgs_class">

                <div class="row item">
                    <div class="col-md-4">
                        <label>{{$field_label}}</label>
                        <input type="file" class="form-control {{$field_id}}_class" name="{{$field_name_arr}}" id="{{$field_id}}" accept="{{$accept}}">
                    </div>

                    <?php if($need_alt_title=="yes"): ?>

                        <div class="col-md-4">
                            <label>Title</label>
                            <input type="text" class="form-control" name="{{$title_field}}" placeholder="Title">
                        </div>

                        <div class="col-md-4">
                            <label>Alt</label>
                            <input type="text" class="form-control" name="{{$alt_field}}" placeholder="logo Alt">
                        </div>

                    <?php endif; ?>

                    <?php if(is_array($additional_inputs_arr)&&count($additional_inputs_arr)): ?>

                        <div class="col-md-8">
                            <?php
                                //add additional fields
                                $empty_values=array();
                                for($i=0;$i<count($additional_inputs_arr[0]);$i++){
                                    $empty_values[]="";
                                }

                                echo generate_inputs_html(
                                    $labels_name=$additional_inputs_arr[0],
                                    $fields_name=$additional_inputs_arr[1],
                                    $required=$additional_inputs_arr[2],
                                    $type=$additional_inputs_arr[3],
                                    $values=$empty_values,
                                    $class=$additional_inputs_arr[5]
                                );
                            ?>
                        </div>

                    <?php endif; ?>

                </div>
            </div>

            <div class="col-md-12 text-center">
                <a href="" class="btn btn-primary add_img_btn_class">{{$add_item_label}}</a>
            </div>

            <div class="col-md-12" style="padding-left: 0px;padding-right: 0px;">

                <div class="panel panel-info">
                    <div class="panel-heading" data-toggle="collapse" data-target=".old_data_{{$field_name}}">Old {{$show_as_link?"Files":"Images"}}</div>
                    <div class="panel-body collapse old_data_{{$field_name}}">

                        <div class="col-md-12 old_imgs">
                            <div class="row-fluid">
                                <?php if(is_array($slider_photos)&&count($slider_photos)): ?>

                                    <ul style="list-style: none; display: inline-block;width: 100%;">
                                        <?php foreach($slider_photos as $key => $img): ?>

                                            <li class="old_item col-md-12" style="border-bottom: 1px solid #CCC;padding-bottom: 5px;">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <?php if($show_as_link==true): ?>
                                                            <a target="_blank" href="{{url("$img->path")}}" class="slider_item_when_edited_{{$img->id}}" data-item_type="link">
                                                                {{((!empty($img->title))?$img->title:"Link")}}
                                                            </a>
                                                        <?php else: ?>
                                                            <img src="{{get_image_or_default($img->path)}}"
                                                                 alt="{{$img->alt}}" title="{{$img->title}}"
                                                                 class="slider_item_when_edited_{{$img->id}}" data-item_type="img"
                                                                 style="max-height:270px;width:100%;">
                                                        <?php endif; ?>

                                                        <div class="col-md-12" style="padding-left: 0px;padding-left: 0px;">
                                                            <button type="button" class="btn btn-info open_edit_modal" data-img_id="{{$img->id}}">Edit {{$show_as_link?"File":"Image"}}</button>
                                                        </div>
                                                    </div>


                                                    <div class="col-md-8">
                                                        <?php if($need_alt_title): ?>
                                                            <div class="col-md-12 form-group">
                                                                <label for="">Title</label>
                                                                <input type="text" class="form-control slider_img_title" name="{{$old_title_field}}" placeholder="Slider Title" value="{{$img->title}}">
                                                            </div>

                                                            <div class="col-md-12 form-group">
                                                                <label for="">Alt</label>
                                                                <input type="text" class="form-control slider_img_alt" name="{{$old_alt_field}}" placeholder="Slider Alt" value="{{$img->alt}}">
                                                            </div>
                                                        <?php endif; ?>

                                                        <?php if(is_array($additional_inputs_arr)&&count($additional_inputs_arr)): ?>
                                                            <?php
                                                                //add additional fields
                                                                $new_values=array();

                                                                foreach ($additional_inputs_arr[4] as $input_v_key => $input_v) {

                                                                    if (isset($input_v[$key])) {
                                                                        //$new_values[]=  array_shift($input_v);
                                                                        $new_values[]=  $input_v[$key];

                                                                    }
                                                                    else{
                                                                        $new_values[]="";
                                                                    }
                                                                }


                                                                foreach ($additional_inputs_arr[1] as $field_key => $value) {
                                                                    if ($key==0) {
                                                                        $additional_inputs_arr[1][$field_key]="edit_".$additional_inputs_arr[1][$field_key];
                                                                    }

                                                                }

                                                                echo generate_inputs_html(
                                                                    $labels_name=$additional_inputs_arr[0],
                                                                    $fields_name=$additional_inputs_arr[1],
                                                                    $required=$additional_inputs_arr[2],
                                                                    $type=$additional_inputs_arr[3],
                                                                    $values=$new_values,
                                                                    $class=$additional_inputs_arr[5]
                                                                );
                                                            ?>
                                                        <?php endif; ?>
                                                    </div>

                                                    <a href="#" class="btn btn-danger slider_img_remover" data-photoid="{{$img->id}}">Remove</a>
                                                </div>
                                            </li>
                                        <?php endforeach; ?>
                                    </ul>

                                <?php endif; ?>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

        </div>
        <input type="hidden" class="json_values_of_slider_class" name="{{$json_values_of_slider}}" value='{!! json_encode($slider_photos_ids) !!}'>
    </div>


</div>

