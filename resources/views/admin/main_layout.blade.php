<!DOCTYPE html>
<html lang="en" class="ie8 no-js"> <![endif]-->
<html lang="en" class="ie9 no-js"> <![endif]-->
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <title>{{$meta_title}}</title>
    <meta name="description" content="<?php echo $meta_desc ?>"/>
    <meta name="keywords" content="<?php echo $meta_keywords ?>"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport"/>

    <?php if(isset($logo_and_icon->icon)): ?>
        <link rel="shortcut icon" href="{{get_image_or_default($logo_and_icon->icon->path)}}" type="image/x-icon">
    <?php endif; ?>

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/admin/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/admin/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/admin/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/admin/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/admin/css/components.css" rel="stylesheet" id="style_components" type="text/css"/>
    <link href="{{url("/")}}/public/admin/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/admin/layouts/layout/css/layout.css" rel="stylesheet" type="text/css"/>
    {{--<link href="{{url("/")}}/public/admin/layouts/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/>--}}
    <link href="{{url("/")}}/public/admin/layouts/layout/css/themes/light2.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="{{url("/")}}/public/admin/layouts/layout/css/custom.css" rel="stylesheet" type="text/css"/>

    <link href="{{url("/")}}/public/admin/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/admin/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css"/>

    <link href="{{url("/")}}/public/admin/plugins/jquery-ui/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/admin/plugins/select2/select2.min.css" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/admin/plugins/select2/select2-bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/front/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/front/css/radio_style.css" rel="stylesheet" type="text/css"/>
    <link href="{{url("/")}}/public/dev/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css"/>


    <script src="{{url("/")}}/public/admin/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/plugins/js.cookie.min.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/plugins/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/plugins/moment.min.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/scripts/app.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/layouts/layout/scripts/layout.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/layouts/layout/scripts/demo.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>

    <script src="{{url("/")}}/public/admin/plugins/datatables/datatables.min.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/admin/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>



    <script src="{{url("/")}}/public/admin/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/front/fancybox/jquery.fancybox.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/dev/js/bootstrap-datetimepicker.js" type="text/javascript"></script>

    <script src="{{url("/public/ckeditor/ckeditor.js")}}" type="text/javascript"></script>
    <script src="{{url("/public/ckeditor/adapters/jquery.js")}}" type="text/javascript"></script>


    <script src="{{url("/public/admin/plugins/select2/select2.min.js")}}" type="text/javascript"></script>


    <script src="{{url("/")}}/public/jscode/config.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/jscode/admin/admin.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/jscode/admin/utility.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/jscode/dashboard.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/jscode/tree.js" type="text/javascript"></script>
    <script src="{{url("/")}}/public/jscode/btm_form_helpers/form.js" type="text/javascript"></script>


</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">

<input type="hidden" class="csrf_input_class" value="{{csrf_token()}}">
<input type="hidden" class="url_class" value="<?= url("/") ?>">
<input type="hidden" class="lang_url_class" value="<?= $lang_url_segment ?>">


<div class="page-wrapper">
    <!-- BEGIN HEADER -->
    <div class="page-header navbar navbar-fixed-top">
        <!-- BEGIN HEADER INNER -->
        <div class="page-header-inner ">
            <!-- BEGIN LOGO -->
            <div class="page-logo">
                <a href="{{url("/admin/dashboard")}}">
                    <img src="{{url("/public/assets")}}/#" alt="logo" class="logo-default"/>
                </a>
                <div class="menu-toggler sidebar-toggler">
                    <span></span>
                </div>
            </div>

            <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                <span></span>
            </a>

            @include("admin.components.top_menu")
        </div>
    </div>

    <div class="clearfix"></div>

    <div class="page-container">
        <div class="page-sidebar-wrapper">
            <div class="page-sidebar navbar-collapse collapse">
                @include("admin.components.menu")
            </div>
        </div>
        <div class="page-content-wrapper">
            <div class="page-content">
                @yield("subview")
            </div>
        </div>
    </div>

    <div class="page-footer">
        <div class="page-footer-inner">
            2016 &copy;
        </div>
        <div class="scroll-to-top">
            <i class="icon-arrow-up"></i>
        </div>
    </div>

</div>


</body>

</html>