<!-- ==============================================
     Navigation Section
     =============================================== -->
<header id="header" class="navbar navbar-fixed-top navbar--white ng-isolate-scope headroom headroom--top">
    <nav role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle header-nav__button" data-toggle="collapse" data-target=".navbar-main">
                <span class="icon-bar header-nav__button-line"></span>
                <span class="icon-bar header-nav__button-line"></span>
                <span class="icon-bar header-nav__button-line"></span>
            </button>
            <div class="header-nav__logo">
                <a class="header-nav__logo-link navbar-brand" href="{{url("/")}}" style="padding:0;width:250px">
                    <img alt="" src="{{url("/public/assets")}}/img/barber_logo.png" class="img-responsive" />
                </a>
            </div>
        </div>
        <div class="collapse navbar-collapse navbar-main navbar-right">
            <ul class="nav navbar-nav header-nav__navigation">
                <li class="header-nav__navigation-item">
                    <a href="{{url("/")}}" class="header-nav__navigation-link active">
                        Home
                    </a>
                </li>

                <?php foreach($default_pages as $key=>$page): ?>
                <li class="header-nav__navigation-item">
                    <a href="{{url($lang_url_segment."/pages/$page->page_slug")}}" class="header-nav__navigation-link ">
                        {{$page->page_title}}
                    </a>
                </li>
                <?php endforeach; ?>


                <?php if(false):?>
                <li class="header-nav__navigation-item">
                    <a class="header-nav__navigation-link" href="login.php">Login</a>
                </li>
                <li class="header-nav__navigation-item">
                    <a class="header-nav__navigation-link header-nav__navigation-link--outline" href="register.php">Sign Up for Free</a>
                </li>

                <li class="dropdown user user-menu">
                    <!-- Menu Toggle Button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <!-- The user image in the navbar-->
                        <?php // echo $profileimg; ?>
                        <img src="Admin/uploads/team/1483410849.jpg" class="user-image" alt="User Image" />

                        <!-- hidden-xs hides the username on small devices so only the image appears. -->
                        <span class="hidden-xs">
                  	Jon Smith
                  </span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="m_2"><a href="Admin/dashboard.php"><i class="fa fa-dashboard"></i>Dashboard</a></li>
                        <li class="m_2"><a href="Admin/profile.php?a=profile"><i class="fa fa-user"></i>Profile</a></li>
                        <li class="m_2"><a href="Admin/logout.php"><i class="fa fa-lock"></i>Logout</a></li>
                    </ul>
                </li>
            </ul>
            <?php endif;?>
        </div>
    </nav>
</header>
