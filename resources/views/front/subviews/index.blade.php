@extends("front.main_layout")

@section("subview")

    <style>

        .categories img {
            font-size: 40px;
            color: #16A085;
            background-color: #fff;
            border-radius: 100%;
            display: inline-block;
            width: 80px;
            height: 80px;
            line-height: 80px;
            text-align: center;
            margin-bottom: 10px;
        }

    </style>

    <!-- ==============================================
 Header
 =============================================== -->
    <header class="header" style="
            background: url('{{url("/public/assets")}}/img/header/1519332098r.png') no-repeat center center fixed;
            background-size: cover;
            background-position: center center;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            color: #fff;
            height: 100vh;
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;">

        <div class="container">

            <div class="row">
                <div class="banner-content wow fadeInUp">
                    <h2 class="banner-title">Articles</h2>
                </div>
            </div>
            <!--./row -->

        </div>
        <!--./container -->
    </header>
    <!--./header -->

    <!-- ==============================================
	 Categories Section
	 =============================================== -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="text-center">
                    <h3>All Articles</h3>
                    <hr class="mint">
                </div>
            </div>
            <div class="col-lg-12">
                <form action="{{url("/")}}" method="get" id="searchForm" class="list-search revealOnScroll"
                      data-animation="fadeInDown" data-timeout="200">

                    <div class="col-lg-4">


                        <?php

                        echo generate_select_tags(
                            'cat_id',
                            'Select category',
                            collect($categories)->pluck('cat_name')->all(),
                            collect($categories)->pluck('cat_id')->all(),
                            [$cat_id],
                            $class="form-control",
                            $multiple="",
                            $required="",
                            $disabled = "",
                            $data = '',
                            $grid = "col-md-12",
                            $hide_label=false,
                            $remove_multiple = false

                        )

                        ?>

                    </div>
                    <div class="col-lg-4">
                        <button>Get Articles</button>
                    </div>

                </form>

            </div>
            <!-- /.row -->
            <br/>

            <?php foreach ($articles as $key=>$article):?>

            <div class="col-lg-3 wow fadeInUp">
                <a href="{{url("/article/$article->article_id")}}" style="height: 305px; width: 100%;">
                    <img src="{{get_image_or_default($article->path)}}" alt="" width="50">
                    <h6>{{$article->article_name}}</h6>
                </a>
            </div>

            <?php endforeach;?>

            <style>
                .pagination {
                    width: 100% !important;
                }
            </style>
            <div class="col-lg-12">
                {{ $articles->links() }}

            </div>
        </div>

        </div>

        <!-- /.container -->
    </section>

    <!-- /.section -->



@endsection