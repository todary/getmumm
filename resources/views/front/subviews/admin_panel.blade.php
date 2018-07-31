@extends("front.main_layout")

@section("subview")

    <div class="container" style="    margin-top: 80px;margin-bottom: 10px;">
        <div class="col-md-6 col-md-offset-3">

            <form method="POST" action="{{url('/admin_panel')}}">
                {{csrf_field()}}

                <div class="form-group">
                    <label class="pull-left">Email</label>
                    <input type="text" placeholder="email" class="form-control" name="email"/>
                </div>
                <div class="form-group">
                    <label class="pull-left">Password</label>
                    <input type="password" placeholder="password" class="form-control" name="password"/>
                </div>

                <button type="submit" class="btn btn-default">Login</button>
            </form>

        </div>
    </div>

@endsection


