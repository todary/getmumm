<?php

if (is_object($img_obj)) {
    $old_path_value = url($img_obj->path);
    $old_title_value = $img_obj->title;
    $old_alt_value = $img_obj->alt;
    $disalbed = "disabled";
}


$filed_name_id = $filed_label . "id";

$checkbox_field_name_id = $checkbox_field_name . "id";

$title_field_name = $filed_label . "title";
$alt_field_name = $filed_label . "alt";

?>

<div class="{{$grid}} form-group parent_file_upload_input">
    <label for="">{!! $display_label !!} {!! $recomended_size !!}</label>
    <div>
        <?php

            $file_size_class = "col-md-4";
            if ($need_alt_title != "yes") {
                $file_size_class = "";
            }

        ?>

        <div class="{{$file_size_class}}">
            <input type="file" class="form-control  file_upload_input" name="{{$filed_name}}" {{$disalbed}} id="{{$filed_name_id}}" {{$required_field}} >
        </div>

        <?php if($need_alt_title == "yes"):?>
            <div class="col-md-4">
                <input type="text" class="form-control" placeholder="image title" name="{{$title_field_name}}" {{$required_alt_title}} value="{{$old_title_value}}">
            </div>
            <div class="col-md-4">
                <input type="text" class="form-control" placeholder="image alt" name="{{$alt_field_name}}" {{$required_alt_title}} value="{{$old_alt_value}}">
            </div>
        <?php endif;?>
    </div>

    <?php if($disalbed != ""):?>
    <div class="">
        <div class="">
            <div class="row-fluid">
                <?php if(   strpos($old_path_value, "pdf") > 0 ||
                            strpos($old_path_value, "doc") > 0 ||
                            strpos($old_path_value, "docx") > 0 ||
                            strpos($old_path_value, "mp4") > 0
                        ):?>
                    <a class="btn btn-info" href="{{$old_path_value}}" >link</a>
                <?php else: ?>
                    <img src="{{$old_path_value}}" alt="{{$old_alt_value}}" title="{{$old_title_value}}" width="{{$displayed_img_width}}">
                <?php endif;?>
            </div>
            <div class="row-fluid">
                <input class="checkbox_field_image" type="checkbox" name="{{$checkbox_field_name}}" id="{{$checkbox_field_name_id}}">:upload new file
            </div>
        </div>
    </div>
    <?php endif;?>
</div>


