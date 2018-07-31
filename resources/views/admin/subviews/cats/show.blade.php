@extends('admin.main_layout')

@section('subview')

    <div class="panel panel-info">
        <div class="panel-heading">
            {!! transform_underscore_text($cat_type) !!} Categories
        </div>
        <div class="panel-body">
            <table id="cat_table" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Category Name</th>
                        <th>Articles</th>
                        <th>Order</th>
                        <th>Hide Cat?</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>

                <tbody id="sortable">
                    <?php foreach ($all_cats as $key => $cat): ?>
                        <tr id="row<?= $cat->cat_trans_id ?>" data-fieldname="cat_order" data-parentid="<?= $cat->parent_id ?>"  data-itemid="<?= $cat->cat_id ?>" data-tablename="App\models\category_m">
                        <td><?=$key+1?></td>
                        <td><?= $cat->cat_name ?></td>
                        <td>
                            <a href="<?=url("admin/article/$cat->cat_id")?>">Article</a>
                        </td>
                        <td><?=$cat->cat_order?></td>
                        <td>
                            <?php
                            echo generate_multi_accepters(
                                $accepturl="",
                                $item_obj=$cat,
                                $item_primary_col="cat_id",
                                $accept_or_refuse_col="hide_cat",
                                $model='App\models\category_m',
                                $accepters_data=["0"=>"Show","1"=>"Hide"]
                            );
                            ?>
                        </td>

                        <td><a href="<?= url("admin/category/save_cat/$cat->cat_type/$cat->cat_id") ?>"><span class="label label-info"> Edit <i class="fa fa-edit"></i></span></a></td>
                        <td><a href='#' class="general_remove_item" data-deleteurl="<?= url("/admin/category/delete_cat") ?>" data-tablename="App\models\category_translate_m"  data-itemid="<?= $cat->cat_trans_id ?>"><span class="label label-danger"> Delete <i class="fa fa-remove"></i></span></a></td>
                    </tr>
                    <?php endforeach ?>
                </tbody>

            </table>


            <div class="col-md-6 col-md-offset-3">
                <button class="btn btn-primary btn-block reorder_items">Re-Order</button>
            </div>

        </div>
    </div>




@endsection
