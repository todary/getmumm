<ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">

    <li class="sidebar-toggler-wrapper hide">
        <div class="sidebar-toggler">
            <span></span>
        </div>
    </li>

    <li class="sidebar-search-wrapper">

        <form class="sidebar-search" method="POST">
            <a href="javascript:;" class="remove">
                <i class="icon-close"></i>
            </a>
            <div class="input-group">
                <input type="text" class="form-control filter_menu" placeholder="Search...">
                <span class="input-group-btn">
                    <a href="javascript:;" class="btn">
                        <i class="icon-magnifier"></i>
                    </a>
                </span>
            </div>
        </form>
        <!-- END RESPONSIVE QUICK SEARCH FORM -->
    </li>

    <li class="nav-item parent_nav_item">
        <a class="nav-link" href="{{url("admin/dashboard")}}">
            <i class="fa fa-home"></i>
            <span class="title">{{show_content($admin_panel_admin_menu,"dashboard")}}</span>
        </a>
    </li>





<?php if(false && check_permission($user_permissions,"admin/langs","show_action")): ?>
    <li class="nav-item parent_nav_item">
        <a href="javascript:;" class="nav-link nav-toggle">
            <i class="fa fa-book"></i>
            <span class="title">{{show_content($admin_panel_admin_menu,"languages")}}</span>
            <span class="arrow"></span>
        </a>
        <ul class="sub-menu">
            <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/langs')}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"show_all_languages")}}
                </a>
            </li>
            <?php if(check_permission($user_permissions,"admin/langs","edit_action")): ?>
            <li class="nav-item">
                <a class="nav-link" href="{{url('admin/langs/save_lang')}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"add_new_language")}}
                </a>
            </li>
            <?php endif; ?>
        </ul>
    </li>
    <?php endif; ?>


    <li class="nav-item parent_nav_item">
        <a class="nav-link nav-toggle" href="javascript:;">
            <i class="fa fa-files-o"></i>
            <span class="title">Pages</span>
            <span class="arrow"></span>
        </a>
        <ul class="sub-menu">
            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/pages/show_all")}}">
                    <i class="fa fa-link"></i>
                    Show All Pages
                </a>
            </li>

                <li class="nav-item">
                    <a class="nav-link" href="{{url("/admin/pages/save_page")}}">
                        <i class="fa fa-link"></i>
                        Add New Page
                    </a>
                </li>
        </ul>
    </li>


    <?php if(false && check_permission($user_permissions,"admin/coins","show_action")): ?>
    <li class="nav-item parent_nav_item">
        <a class="nav-link nav-toggle" href="javascript:;">
            <i class="fa fa-bitcoin"></i>
            <span class="title">{{show_content($admin_panel_admin_menu,"coins")}}</span>
            <span class="arrow"></span>
        </a>
        <ul class="sub-menu">
            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/coins/show_all")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"show_all_coins")}}
                </a>
            </li>

            <?php if(check_permission($user_permissions,"admin/coins","add_action")): ?>
            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/coins/save_coin")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"add_new_coin")}}
                </a>
            </li>
            <?php endif; ?>

            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/coins/coin_withdraw_requests")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"pending_coin_withdraw_requests")}}
                </a>
            </li>


            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/coins/coin_withdraw_requests?show_all=yes")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"all_coin_withdraw_requests")}}
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/coins/auto_coin_bonus")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"auto_send_coins")}}
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/coins/users_coins")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"users_coins")}}
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/coins/send_coins_in_details")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"send_coins_in_details")}}
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/coins/send_coins_total")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"send_coins_total")}}
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/coins/manual_coins_report")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"manual_coins_report")}}
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/coins/increase_decrease_coins")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"increase_decrease_coins")}}
                </a>
            </li>



        </ul>
    </li>
    <?php endif; ?>



    <li class="nav-item parent_nav_item">
        <a class="nav-link nav-toggle" href="javascript:;">
            <i class="fa fa-building"></i>
            <span class="title">{{show_content($admin_panel_admin_menu,"Category")}}</span>
            <span class="arrow"></span>
        </a>
        <ul class="sub-menu">
            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/category")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"Show")}}
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/category/save_cat")}}">
                    <i class="fa fa-plus-square"></i>
                    {{show_content($admin_panel_admin_menu,"Add")}}
                </a>
            </li>
        </ul>
    </li>

    <li class="nav-item parent_nav_item">
        <a class="nav-link nav-toggle" href="javascript:;">
            <i class="fa fa-building"></i>
            <span class="title">{{show_content($admin_panel_admin_menu,"Articles")}}</span>
            <span class="arrow"></span>
        </a>
        <ul class="sub-menu">
            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/article/save_article")}}">
                    <i class="fa fa-plus-square"></i>
                    {{show_content($admin_panel_admin_menu,"add_article")}}
                </a>
            </li>
        </ul>
    </li>






<?php if(check_permission($user_permissions,"admin/admins","show_action")): ?>
    <li class="nav-item parent_nav_item">
        <a class="nav-link nav-toggle" href="javascript:;">
            <i class="fa fa-users"></i>
            <span class="title">{{show_content($admin_panel_admin_menu,"admins")}}</span>
            <span class="arrow"></span>
        </a>
        <ul class="sub-menu">
            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/users/get_all_admins")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"show_all_admins")}}
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{url("/admin/users/save")}}">
                    <i class="fa fa-link"></i>
                    {{show_content($admin_panel_admin_menu,"add_new_admin")}}
                </a>
            </li>
        </ul>
    </li>
    <?php endif; ?>

    <li class="nav-item parent_nav_item">
        <a class="nav-link" href="{{url("logout")}}">
            <i class="fa fa-power-off"></i>
            <span class="title">{{show_content($admin_panel_admin_menu,"logout")}}</span>
        </a>
    </li>

</ul>
