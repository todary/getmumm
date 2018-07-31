@extends("admin.main_layout")

@section("subview")

    <div class="page-bar">
        <ul class="page-breadcrumb">

            <li>
                <a href="{{url("/admin/dashboard")}}">{{show_content($admin_panel_admin_menu,"dashboard")}}</a>
                <i class="fa fa-circle"></i>
            </li>

            <li>
                <span>{{show_content($admin_panel_admin_menu,"settings")}}</span>
            </li>
        </ul>
    </div>

    @include("admin.components.msg")

    <div class="portlet box blue-hoki">
        <div class="portlet-title">
            <div class="caption font-green-sharp">
                <i class="fa fa-cogs font-green-sharp"></i>
                <span class="caption-subject bold uppercase">
                    {{show_content($admin_panel_admin_menu,"settings")}}
                </span>
            </div>
            <div class="actions">
                <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="javascript:;" data-original-title="" title=""> </a>
            </div>
        </div>


        <div class="portlet-body">
            <div class="row">
                <div class="col-md-12">

                    <form id="save_form" action="<?=url("admin/edit_settings")?>" method="POST" enctype="multipart/form-data">

                        <?php

                        $normal_tags=[
                            'network_profit_percent',
                            'chart_1_percentage','chart_2_percentage','chart_3_percentage',
                            'flash_out_value'
                        ];

                        $max_100=[
                            'chart_1_percentage','chart_2_percentage','chart_3_percentage'
                        ];

                        $attrs = generate_default_array_inputs_html(
                            $normal_tags,
                            $settings_data,
                            "yes",
                            "",
                            "4"
                        );

                        foreach ($attrs[3] as $key=>$val){
                            $attrs[3][$key]="number";
                            $attrs[2][$key].=" min='0'";

                            if(in_array($key,$max_100)){
                                $attrs[2][$key].=" max='100'";
                            }

                        }

                        $attrs[0]["network_profit_percent"]=show_content($admin_panel_settings_page,"network_profit_percent");
                        $attrs[0]["chart_1_percentage"]=show_content($admin_panel_settings_page,"chart_1_percentage");
                        $attrs[0]["chart_2_percentage"]=show_content($admin_panel_settings_page,"chart_2_percentage");
                        $attrs[0]["chart_3_percentage"]=show_content($admin_panel_settings_page,"chart_3_percentage");
                        $attrs[0]["flash_out_value"]=show_content($admin_panel_settings_page,"flash_out_value");

                        $attrs[6]["network_profit_percent"]="12";

                        echo
                        generate_inputs_html(
                            reformate_arr_without_keys($attrs[0]),
                            reformate_arr_without_keys($attrs[1]),
                            reformate_arr_without_keys($attrs[2]),
                            reformate_arr_without_keys($attrs[3]),
                            reformate_arr_without_keys($attrs[4]),
                            reformate_arr_without_keys($attrs[5]),
                            reformate_arr_without_keys($attrs[6])
                        );

                        ?>

                        <div class="col-md-12">
                            {{csrf_field()}}
                            <input id="submit" type="submit" value="{{show_content($admin_panel_general_keywords,"save")}}" class="col-md-4 col-md-offset-4 btn btn-primary btn-lg">
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>

@endsection


	
