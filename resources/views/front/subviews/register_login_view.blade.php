@extends("front.main_layout")

@section("subview")

    <section style="margin-top: 70px;margin-bottom: 70px;">
        <div class="container">
            <div class="row">
                <div class="text-center">
                    <h3>Login to AdminPanel</h3>
                    <hr class="mint">
                </div>
            </div>
            <div class="col-lg-12">
                <form action="{{url("/login")}}" method="post">

                    {!! csrf_field() !!}

                    <div class="col-md-12 padd-left padd-right">
                        <div class="form-group">
                            <label for="">{{show_content($homepage,"login_email")}}</label>
                            <input type="email" class="form-control" name="email">
                        </div>
                    </div>

                    <div class="col-md-12 padd-left padd-right">
                        <div class="form-group">
                            <label for="">{{show_content($homepage,"login_password")}}</label>
                            <input type="password" class="form-control" name="password">
                        </div>
                    </div>


                    <div class="col-md-12 padd-left padd-right">
                        <div class="request_msgs"></div>
                        <button type="submit" class="btn btn-primary">
                            {{show_content($homepage,"login_button")}}
                        </button>

                        <a href="{{url("/password/reset")}}">
                            {{show_content($homepage,"forget_password")}}
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </section>





@endsection