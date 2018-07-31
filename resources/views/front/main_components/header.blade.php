<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>{{$meta_title}}</title>
    <meta name="description" content="<?php echo $meta_desc ?>"/>
    <meta name="keywords" content="<?php echo $meta_keywords ?>"/>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <?php if(isset($logo_and_icon->icon)): ?>
        <link rel="shortcut icon" href="{{show_content($homepage,"icon",true)}}" type="image/x-icon">
    <?php endif; ?>



    <!-- ====== Favicons ====== -->
    <link rel="shortcut icon" href="img/favicons/favicon.ico">

    <!-- ====== CSS ======-->
    <!-- Style -->
    <link href="{{url("/public/assets")}}/css/hopler.css" rel="stylesheet" type="text/css" />


    <!-- jQuery 2.1.4 -->
    <script src="{{url("/public/assets")}}/js/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <!-- Bootstrap 3.3.6 JS -->
    <script src="{{url("/public/assets")}}/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Wow js -->
    <script src="{{url("/public/assets")}}/js/wow.min.js" type="text/javascript"></script>
    <!-- Kafe JS -->
    <script src="{{url("/public/assets")}}/js/kafe.js" type="text/javascript"></script>


    <!-- ====== Feauture Detection ====== -->
    <script src="{{url("/public/assets")}}/js/modernizr-custom.js"></script>
    <script src="<?= url('public/jscode/config.js') ?>"></script>
    <script src="<?= url('public/jscode/homepage.js') ?>"></script>
    <script src="<?= url('public/jscode/register_user.js') ?>"></script>
    <script src="{{url("/")}}/public/jscode/btm_form_helpers/form.js" type="text/javascript"></script>


</head>
<body>

    <input type="hidden" class="csrf_input_class" value="{{csrf_token()}}">
    <input type="hidden" class="url_class" value="<?= url("/") ?>">
    <input type="hidden" class="lang_url_class" value="<?= $lang_url_segment ?>">


    @include("front.main_components.page_header")


