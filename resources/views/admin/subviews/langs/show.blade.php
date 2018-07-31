@extends("admin.main_layout")

@section("subview")

    <div class="page-bar">
        <ul class="page-breadcrumb">

            <li>
                <a href="{{url("/admin/dashboard")}}">{{show_content($admin_panel_admin_menu,"dashboard")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <span>{{show_content($admin_panel_admin_menu,"show_all_languages")}}</span>
            </li>
        </ul>
    </div>

    <div class="row">
        <div class="col-md-12">

            <div class="portlet box blue-hoki">
                <div class="portlet-title">
                    <div class="caption font-green-sharp">
                        <i class="fa fa-book font-green-sharp"></i>
                        <span class="caption-subject bold uppercase">{{show_content($admin_panel_admin_menu,"show_all_languages")}}</span>
                    </div>
                    <div class="actions">
                        <a href="<?= url("admin/langs/save_lang") ?>" class="btn btn-circle btn-default btn-sm">
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
                                    <td>{{show_content($admin_panel_show_all_languages_page,"language_image")}}</td>
                                    <td>{{show_content($admin_panel_show_all_languages_page,"language_symbol")}}</td>
                                    <td>{{show_content($admin_panel_show_all_languages_page,"language_display_text")}}</td>
                                    <td>{{show_content($admin_panel_general_keywords,"edit")}}</td>
                                    <?php if(check_permission($user_permissions,"admin/langs","delete_action")): ?>
                                    <td>{{show_content($admin_panel_general_keywords,"delete")}}</td>
                                    <?php endif; ?>
                                </tr>
                                </thead>

                                <tbody>
                                <?php foreach ($show_all_langs as $key => $lang): ?>
                                <tr id="row<?= $lang->lang_id ?>">
                                    <td><?= $key+1; ?></td>
                                    <?php
                                    $img_url = url('public/img/no_img.png');
                                    if (file_exists($lang->lang_img_path))
                                    {
                                        $img_url = url($lang->lang_img_path);
                                    }
                                    ?>
                                    <td><img src="<?= url($img_url) ?>" width="50"></td>
                                    <td><?= $lang->lang_title ?></td>
                                    <td><?= $lang->lang_text ?></td>
                                    <td>
                                        <a href="<?= url("admin/langs/save_lang/$lang->lang_id") ?>">
                                            <span class="label label-info">
                                                <i class="fa fa-edit"></i>
                                            </span>
                                        </a>
                                    </td>

                                    <?php if(check_permission($user_permissions,"admin/langs","delete_action")): ?>
                                    <td>
                                        <a
                                            href='#'
                                            class="general_remove_item"
                                            data-tablename="App\models\langs_m"
                                            data-deleteurl="<?= url("/admin/langs/delete_lang") ?>"
                                            data-itemid="<?= $lang->lang_id ?>"
                                        >
                                            <span class="label label-danger">
                                                <i class="fa fa-remove"></i>
                                            </span>
                                        </a>
                                    </td>
                                    <?php endif; ?>
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


