@extends("front.main_layout")

@section("subview")

    <header class="header" style="
            background: url('{{get_image_or_default($page_data->big_img_path)}}') no-repeat center center fixed;
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
                    <h2 class="banner-title">{{$page_data->page_title}}</h2>
                </div>
            </div>

        </div>
    </header>

    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="text-center">
                    <h3>{{$page_data->page_title}}</h3>
                    <hr class="mint">
                </div>
            </div>
            <div class="col-lg-12">
                {!! $page_data->page_body !!}
            </div>
        </div>
    </section>

@endsection