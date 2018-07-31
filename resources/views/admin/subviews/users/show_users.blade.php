@extends("admin.main_layout")

@section("subview")



    <div class="panel panel-info">
        <div class="panel-heading">
            Users
        </div>
        <div class="panel-body">
            <table id="cat_table_1" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                <tr>
                    <td>#</td>
                    <td>Email</td>
                    <td>User Name</td>
                    <td>Full Name</td>
                    <td>Created At</td>
                    <td>Order</td>
                    <td>User Can login?</td>
                </tr>
                </thead>

                <tfoot>
                <tr>
                    <td>#</td>
                    <td>Email</td>
                    <td>User Name</td>
                    <td>Full Name</td>
                    <td>Created At</td>
                    <td>Order</td>
                    <td>User Can login?</td>
                </tr>
                </tfoot>

                <tbody>
                <?php foreach ($users as $key => $user): ?>
                <tr id="row<?= $user->user_id ?>">
                    <td><?=$key+1?></td>
                    <td><?=$user->email ?></td>
                    <td><?=$user->full_name ?></td>
                    <td>{{dump_date($user->created_at)}}</td>
                    <td>
                        <a href="<?= url("admin/orders/show_all/$user->user_id") ?>">
                            <span class="label label-info"> Show Orders </span>
                        </a>
                    </td>
                    <td>
                        <?php
                        echo generate_multi_accepters(
                            $accepturl=url("/admin/users/change_user_can_login"),
                            $item_obj=$user,
                            $item_primary_col="user_id",
                            $accept_or_refuse_col="user_can_login",
                            $model='',
                            $accepters_data=["0"=>"Can Not Login","1"=>"Can Login"]
                        );

                        ?>
                    </td>

                </tr>
                <?php endforeach ?>
                </tbody>

            </table>
        </div>
    </div>


@endsection

