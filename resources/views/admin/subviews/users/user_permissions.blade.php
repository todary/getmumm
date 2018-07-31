@extends("admin.main_layout")

@section("subview")


    <div class="page-bar">
        <ul class="page-breadcrumb">

            <li>
                <a href="{{url("/admin/dashboard")}}">{{show_content($admin_panel_admin_menu,"dashboard")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <a href="{{url("/admin/users/get_all_admins")}}">All Admins</a>
                <i class="fa fa-circle"></i>
            </li>


            <li>
                <span>Edit Admin ({{$user_obj->full_name}}) Permissions</span>
            </li>
        </ul>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="portlet box blue-hoki">
                <div class="portlet-title">
                    <div class="caption font-green-sharp">
                        <i class="fa fa-files-o font-green-sharp"></i>
                        <span class="caption-subject bold uppercase">Edit Admin ({{$user_obj->full_name}}) Permissions</span>
                    </div>
                    <div class="actions">
                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
                    </div>
                </div>


                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12">

                            <form id="save_form" action="<?=url("admin/users/assign_permission/$user_obj->user_id")?>" method="POST" enctype="multipart/form-data">


                                <table class="table table-striped table-bordered">

                                    <thead>
                                    <tr>
                                        <th>Page Name</th>
                                        <th>Show Action</th>
                                        <th>Add Action</th>
                                        <th>Edit Action</th>
                                        <th>Remove Name</th>
                                        <th>Other Permissions</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <?php foreach($all_user_permissions as $user_per_key=>$user_per_val): ?>
                                    <?php
                                    if(!isset($all_permission_pages[$user_per_key])){
                                        continue;
                                    }
                                    ?>

                                    <tr>
                                        <th>
                                            <p title="{{$all_permission_pages[$user_per_key]->page_name}}" style="width: 100px;word-break: break-all;">
                                                {{$all_permission_pages[$user_per_key]->page_name}}
                                            </p>
                                        </th>
                                        <th>
                                            <?php
                                            echo generate_multi_accepters(
                                                $accepturl="",
                                                $item_obj=$user_per_val,
                                                $item_primary_col="per_id",
                                                $accept_or_refuse_col="show_action",
                                                $model='App\models\permissions\permissions_m',
                                                $accepters_data=["0"=>"Refused","1"=>"Accepted"]
                                            );
                                            ?>
                                        </th>
                                        <th>
                                            <?php
                                            echo generate_multi_accepters(
                                                $accepturl="",
                                                $item_obj=$user_per_val,
                                                $item_primary_col="per_id",
                                                $accept_or_refuse_col="add_action",
                                                $model='App\models\permissions\permissions_m',
                                                $accepters_data=["0"=>"Refused","1"=>"Accepted"]
                                            );
                                            ?>
                                        </th>
                                        <th>
                                            <?php
                                            echo generate_multi_accepters(
                                                $accepturl="",
                                                $item_obj=$user_per_val,
                                                $item_primary_col="per_id",
                                                $accept_or_refuse_col="edit_action",
                                                $model='App\models\permissions\permissions_m',
                                                $accepters_data=["0"=>"Refused","1"=>"Accepted"]
                                            );
                                            ?>
                                        </th>
                                        <th>
                                            <?php
                                            echo generate_multi_accepters(
                                                $accepturl="",
                                                $item_obj=$user_per_val,
                                                $item_primary_col="per_id",
                                                $accept_or_refuse_col="delete_action",
                                                $model='App\models\permissions\permissions_m',
                                                $accepters_data=["0"=>"Refused","1"=>"Accepted"]
                                            );
                                            ?>
                                        </th>
                                        <th>

                                            <?php
                                            $all_additional_permissions=$all_permission_pages[$user_per_key]->all_additional_permissions;
                                            $all_additional_permissions=json_decode($all_additional_permissions,true);

                                            if(!isset_and_array($all_additional_permissions)){
                                                $all_additional_permissions=[];
                                            }

                                            $selected_additional_permissions=json_decode($user_per_val->additional_permissions);
                                            if(!isset_and_array($selected_additional_permissions)){
                                                $selected_additional_permissions=[];
                                            }

                                            echo generate_select_tags(
                                                $field_name="additional_perms_new".$user_per_val->per_id,
                                                $label_name="Select Other Permissions",
                                                $text=$all_additional_permissions,
                                                $values=$all_additional_permissions,
                                                $selected_value=$selected_additional_permissions,
                                                $class="form-control",
                                                $multiple="multiple",
                                                $required="",
                                                $disabled = "",
                                                $data = ""
                                            );

                                            ?>

                                        </th>
                                    </tr>
                                    <?php endforeach;?>
                                    </tbody>
                                </table>




                                {{csrf_field()}}
                                <input type="submit" value="{{show_content($admin_panel_general_keywords,"save")}}" class="col-md-4 col-md-offset-4 btn btn-primary btn-lg">
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection
