@extends("front.main_layout")

@section("subview")

    <?php

        if(!empty($article_data->img_path)){
            $img_path = $article_data->img_path;
        }else{
            $img_path =   '/public/assets/img/header/1519332098r.png';
        }

    ?>
    <style>

        .categories img {
            /* font-size: 40px; */
            /* color: #16A085; */
            /* background-color: #fff; */
            border-radius: 100%;
            display: inline-block;
            /* width: 80px; */
            /* height: 80px; */
            /* line-height: 80px; */
            text-align: center;
            margin-bottom: 10px;
            width: 100px;
            height: 60px;
        }

    </style>

    <!-- ==============================================
 Header
 =============================================== -->
    <header class="header" style="
            background: url('{{url("$img_path")}}') no-repeat center center fixed;
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
                    <h2 class="banner-title">{{$article_data->article_name}}</h2>
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

                {!! $article_data->article_desc !!}

            </div>
            <hr />
            <br>
            <div class="card my-4">
                <h5 class="card-header">Leave a Comment:</h5>
                <div class="card-body">
                    <form action="{{url("/comment/$article_data->article_id")}}" method="get">
                        <div class="form-group">
                            <textarea class="form-control" name="comment_text" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>

            <?php foreach($comment_data as $comment): ?>

            <div class="media mb-4" style="background-color: #fff; padding: 13px; border-radius: 10px;">
                <img class="d-flex mr-3 col-md-4 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                    <h5 class="mt-0"></h5>
                    {{$comment->comment_text}}
                </div>
            </div>
            <?php endforeach; ?>

            <!-- /.row -->

        </div>

        </div>

        <!-- /.container -->
    </section>

    <!-- /.section -->



@endsection