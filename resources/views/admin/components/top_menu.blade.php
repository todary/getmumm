<div class="top-menu">
    <ul class="nav navbar-nav pull-right">

        <?php if(check_permission($user_permissions,"admin/notifications","show_action")): ?>

        <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
            <a href="javascript:;" class="dropdown-toggle show_notification_ul" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <i class="icon-bell"></i>
                <span class="badge badge-default"> {{count($notifications)}} </span>
            </a>
            <ul class="dropdown-menu notification_ul" data-user_id="{{$current_user->user_id}}">
                <li class="external">
                    <h3>notifications</h3>
                </li>
                <li>
                    <ul class="dropdown-nav-item scroller notifications_items_body" style="height: 250px;" data-handle-color="#637283">


                        <?php if(is_array($notifications) && count($notifications)): ?>
                        <?php foreach($notifications as $key => $not): ?>
                        <?php
                        if($key == 100)
                        {
                            break;
                        }
                        ?>
                        <li class="not_item col-md-12" data-not_id="{{$not->not_id}}">
                            <div class="notification_desc alert alert-{{($not->not_type!=""?"$not->not_type":"info")}}">
                                <p>{{$not->not_title}}</p>
                                <p><span>{{\Carbon\Carbon::createFromTimestamp(strtotime($not->created_at))->diffForHumans()}}</span></p>
                            </div>
                            <div class="clearfix"></div>
                        </li>
                        <?php endforeach; ?>
                        <?php endif; ?>
                    </ul>
                </li>
            </ul>
        </li>
        <?php endif; ?>


        <li class="dropdown dropdown-user">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                <img alt="" class="img-circle" src="{{get_image_or_default("$current_user->path")}}" style="width: 29px;height: 29px;" />
                <span class="username username-hide-on-mobile"> {{$current_user->full_name}} </span>
                <i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-default">
                <li>
                    <a href="{{url("/logout")}}">
                        <i class="icon-key"></i>
                        {{show_content($admin_panel_admin_menu,"logout")}}
                    </a>
                </li>
            </ul>
        </li>

    </ul>
</div>