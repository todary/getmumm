@extends('admin.main_layout')

@section('subview')

    <div class="panel panel-info">
        <div class="panel-heading">
            {{ $category }} Categories
        </div>
        <div class="panel-body">
            <table id="cat_table" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                <tr>
                    <td>#</td>
                    <td>Image</td>
                    <td>Title</td>
                    <td>published</td>
                    <td>action</td>
                </tr>
                </thead>

                <tbody>
                <?php foreach ($articles as $key => $article):?>

                <tr id="row<?= $article->article_id ?>">
                    <td><?=$key+1?></td>
                    <td><?=$article->article_name?></td>
                    <td>
                        <a class="fancybox" rel="group" href="{{get_image_or_default($article->img_path)}}">
                            <img src="{{get_image_or_default($article->img_path)}}" alt="" width="50">
                        </a>

                    </td>
                    <td>
                        <?php
                        echo generate_multi_accepters(
                            $accepturl="",
                            $item_obj=$article,
                            $item_primary_col="article_id",
                            $accept_or_refuse_col="publish_article",
                            $model='App\models\articles_m',
                            $accepters_data=["0"=>"Not publish","1"=>"publish"]
                        );
                        ?>
                    </td>

                    <td>
                        <a href="<?= url("admin/article/save_article/$article->article_id") ?>">
                            <span class="label label-info">  <i class="fa fa-edit"></i></span>
                        </a>
                        <a href="#" class="general_remove_item" data-deleteurl="<?= url("/general_remove_item") ?>" data-tablename="App\models\articles_m"  data-itemid="<?= $article->article_id ?>">
                            <span class="label label-danger">  <i class="fa fa-remove"></i></span>
                        </a>
                    </td>


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
