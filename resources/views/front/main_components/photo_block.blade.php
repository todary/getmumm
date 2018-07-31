<?php foreach($imgs_data as $key=>$img): ?>
    <?php
        $img=(object)$img;
    ?>

    <div class="preview_post_img_div" data-realimg="{{$img->real_link}}">
        <img src="{{$img->img_link}}" class="preview_post_img">
        <div class="remove_img">
            <a href="{{$img->real_link}}" class="fancybox_link fancybox">
                <i class="fa fa-expand"></i>
            </a>
            <a href="#" class="remove_img_from_arr">
                <i class="fa fa-times"></i>
            </a>
        </div>
    </div>
<?php endforeach; ?>
