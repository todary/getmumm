@extends("admin.main_layout")

@section("subview")

    <div class="page-bar">
        <ul class="page-breadcrumb">

            <li>
                <a href="{{url("/admin/dashboard")}}">{{show_content($admin_panel_admin_menu,"dashboard")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <span>{{show_content($admin_panel_admin_menu,"show_all_admins")}}</span>
            </li>
        </ul>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="portlet box blue-hoki">
                <div class="portlet-title">
                    <div class="caption font-green-sharp">
                        <i class="fa fa-files-o font-green-sharp"></i>
                        <span class="caption-subject bold uppercase">{{show_content($admin_panel_admin_menu,"show_all_admins")}}</span>
                    </div>
                    <div class="actions">
                        <a href="<?= url("admin/users/save") ?>" class="btn btn-circle btn-default btn-sm">
                            <i class="fa fa-plus"></i>
                        </a>
                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
                    </div>
                </div>


                <div class="portlet-body">
                    <div class="row">
                        <div class="col-md-12">

                            <table id="cat_table" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <td>#</td>
                                    <td>{{show_content($admin_panel_show_all_admin_page,"email")}}</td>
                                    <td>{{show_content($admin_panel_show_all_admin_page,"full_name")}}</td>

                                    <?php if(false): ?>
                                    <td>Permissions</td>
                                    <?php endif; ?>

                                    <td>{{show_content($admin_panel_general_keywords,"edit")}}</td>
                                    <td>Remove</td>
                                </tr>
                                </thead>

                                <tbody>
                                <?php foreach ($users as $key => $user): ?>
                                <tr id="row<?= $user->user_id ?>">
                                    <td><?=$key+1?></td>
                                    <td><?=$user->email ?></td>
                                    <td><?=$user->full_name ?></td>

                                    <?php if(false): ?>
                                    <td>
                                        <a href="<?= url("admin/users/assign_permission/$user->user_id") ?>">
                                            <span class="label label-info"> Edit Permissions <i class="fa fa-edit"></i></span>
                                        </a>
                                    </td>
                                    <?php endif; ?>

                                    <td>
                                        <a href="<?= url("admin/users/save/$user->user_id") ?>">
                                            <span class="label label-info">  <i class="fa fa-edit"></i></span>
                                        </a>
                                    </td>
                                    <td>
                                        <a href="#" class="general_remove_item" data-deleteurl="<?= url("/admin/users/remove_admin") ?>" data-tablename="App\User"  data-itemid="<?= $user->user_id ?>">
                                            <span class="label label-danger">  <i class="fa fa-remove"></i></span>
                                        </a>
                                    </td>


                                </tr>
                                <?php endforeach ?>
                                </tbody>

                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection



