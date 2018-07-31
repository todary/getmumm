@extends("admin.main_layout")


@section("subview")

        <div class="page-bar">
            <ul class="page-breadcrumb">
                <li>
                    <span>{{show_content($admin_panel_admin_menu,"dashboard")}}</span>
                </li>
            </ul>
        </div>
        <h1 class="page-title">{{show_content($admin_panel_admin_menu,"dashboard")}}</h1>

        <div class="row">

        </div>



@endsection


