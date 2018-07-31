@extends("admin.main_layout")


@section("subview")

    <?php
        $permission_page = "admin/pages";
    ?>


    <div class="page-bar">
        <ul class="page-breadcrumb">

            <li>
                <a href="{{url("/admin/dashboard")}}">{{show_content($admin_panel_admin_menu,"dashboard")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <span>{{$page_type}}</span>
            </li>
        </ul>
    </div>


    <div class="row">
        <div class="col-md-12">

            <div class="portlet box blue-hoki">
                <div class="portlet-title">
                    <div class="caption font-green-sharp">
                        <i class="fa fa-files-o font-green-sharp"></i>
                        <span class="caption-subject bold uppercase">{{$page_type}}</span>
                    </div>
                    <div class="actions">
                        <a href="<?= url("admin/pages/save_page/$page_type") ?>" class="btn btn-circle btn-default btn-sm">
                            <i class="fa fa-plus"></i>
                        </a>
                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
                    </div>
                </div>


                <div class="portlet-body">
                    <div class="row">

                    <div class="col-md-12">

                        <table id="cat_table" class="table table-striped table-bordered" cellspacing="0"
                               width="100%">
                            <thead>
                            <tr>
                                <td>#</td>
                                <td>{{show_content($admin_panel_show_all_pages_page,"image")}}</td>
                                <td>{{show_content($admin_panel_show_all_pages_page,"name")}}</td>
                                <td>{{show_content($admin_panel_show_all_pages_page,"link")}}</td>
                                <td>{{show_content($admin_panel_show_all_pages_page,"order")}}</td>
                                <td>{{show_content($admin_panel_show_all_pages_page,"hide")}}</td>

                                <td>{{show_content($admin_panel_general_keywords,"edit")}}</td>
                                <?php if(check_permission($user_permissions, $permission_page, "delete_action")): ?>
                                <td>{{show_content($admin_panel_general_keywords,"delete")}}</td>
                                <?php endif; ?>

                            </tr>
                            </thead>

                            <tbody id="sortable">
                            <?php foreach ($pages as $key => $page): ?>
                            <?php
                            $img_url = url('public/img/no_img.png');
                            if (file_exists($page->small_img_path)) {
                                $img_url = url($page->small_img_path);
                            }
                            $url = url("/$page->page_slug");
                            ?>

                            <tr id="row<?= $page->trans_id ?>" data-fieldname="page_order"
                                data-itemid="<?= $page->page_id ?>" data-tablename="App\models\pages\pages_m">
                                <td><?= $key+1; ?></td>

                                <td><img src="<?= url($img_url) ?>" width="50"></td>
                                <td><?= $page->page_title ?></td>
                                <td>
                                    <a href="<?=$url  ?>">
                                        Link
                                    </a>
                                </td>

                                <td>{{$page->page_order}}</td>

                                <td>
                                    <?php
                                    echo generate_multi_accepters(
                                        $accepturl = "",
                                        $item_obj = $page,
                                        $item_primary_col = "page_id",
                                        $accept_or_refuse_col = "hide_page",
                                        $model = 'App\models\pages\pages_m',
                                        $accepters_data = ["1" => "Hide", "0" => "Show"]
                                    );
                                    ?>
                                </td>

                                <td><a href="<?= url("admin/pages/save_page/$page->page_type/$page->page_id") ?>"><span
                                                class="label label-info"> <i class="fa fa-edit"></i></span></a>
                                </td>

                                <?php if(check_permission($user_permissions, $permission_page, "delete_action")): ?>
                                <td><a href='#' class="general_remove_item"
                                       data-tablename="App\models\pages\pages_translate_m"
                                       data-deleteurl="<?= url("/admin/pages/remove_page") ?>"
                                       data-itemid="<?= $page->trans_id ?>"><span class="label label-danger"> <i
                                                    class="fa fa-remove"></i></span></a></td>
                                <?php endif; ?>
                            </tr>
                            <?php endforeach ?>
                            </tbody>

                        </table>

                        <div class="col-md-6 col-md-offset-3">
                            <button class="btn btn-primary btn-block reorder_items">
                                {{show_content($admin_panel_show_all_pages_page,"re_order")}}
                            </button>
                        </div>

                    </div>

                    </div>
                </div>
            </div>


        </div>
    </div>

@endsection
