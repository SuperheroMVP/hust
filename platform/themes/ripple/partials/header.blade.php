<!DOCTYPE html>
<!--[if IE 7]><html class="ie ie7" lang="{{ app()->getLocale() }}"><![endif]-->
<!--[if IE 8]><html class="ie ie8" lang="{{ app()->getLocale() }}"><![endif]-->
<!--[if IE 9]><html class="ie ie9" lang="{{ app()->getLocale() }}"><![endif]-->
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">

        <title>{{ SeoHelper::getTitle() }}</title>

        <!-- Fonts-->
        <link href="https://fonts.googleapis.com/css?family={{ theme_option('primary_font', 'Roboto') }}" rel="stylesheet" type="text/css">
        <!-- CSS Library-->

        <style>
            body {font-family: '{{ theme_option('primary_font', 'Roboto') }}', sans-serif !important;}
        </style>

        {!! Theme::header() !!}

        <!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
        <!--WARNING: Respond.js doesn't work if you view the page via file://-->
        <!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <!--[if IE 7]><body class="ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
    <!--[if IE 8]><body class="ie8 lt-ie9 lt-ie10"><![endif]-->
    <!--[if IE 9]><body class="ie9 lt-ie10"><![endif]-->
    <body>
    <!-- Header -->
    <header class="header">
        <!-- Topbar -->
        <!-- End Topbar -->
        <!-- Header Inner -->
        <div class="header-middle">
            <div class="container">
                <div class="header-middle-inner">
                    <div class="item">
                        <div class="logo">
                            <a href="#">
                                <img src="assets/images/logo.png" class="set-logo">
                            </a>
                        </div>
                        <div class="header-widget">
                            <span>ĐẠI HỌC BÁCH KHOA HÀ NỘI</span>
                            <span>VIỆN ĐIỆN TỬ - VIỄN THÔNG</span>
                        </div>
                        <div class="mobile-menu"><div class="slicknav_menu"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed"><span class="slicknav_menutxt"></span><span class="slicknav_icon slicknav_no-text"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a><ul class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
                                    <li class="active slicknav_collapsed slicknav_parent"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="https://themelamp.com/html/learnedu/index.html" tabindex="-1">Home<i class="fa fa-angle-down"></i></a>
                                            <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                            <li><a href="https://themelamp.com/html/learnedu/index.html" role="menuitem" tabindex="-1">Homepage Default</a></li>
                                            <li><a href="https://themelamp.com/html/learnedu/index2.html" role="menuitem" tabindex="-1">Homepage Animation</a></li>
                                        </ul>
                                    </li>
                                    <li class="slicknav_collapsed slicknav_parent"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" tabindex="-1">Pages<i class="fa fa-angle-down"></i></a>
                                            <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                            <li><a href="https://themelamp.com/html/learnedu/about.html" role="menuitem" tabindex="-1">About Us</a></li>
                                            <li class="slicknav_collapsed slicknav_parent"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" tabindex="-1">Teachers<i class="fa fa-angle-right"></i></a>
                                                    <span class="slicknav_arrow">►</span></a><ul class="dropdown submenu slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                                    <li><a href="https://themelamp.com/html/learnedu/teacher.html" role="menuitem" tabindex="-1">Teachers V1</a></li>
                                                    <li><a href="https://themelamp.com/html/learnedu/teacher2.html" role="menuitem" tabindex="-1">Teachers V2</a></li>
                                                    <li><a href="https://themelamp.com/html/learnedu/teacher-single.html" role="menuitem" tabindex="-1">Teacher Single</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="https://themelamp.com/html/learnedu/testimonials.html" role="menuitem" tabindex="-1">Testimonials</a></li>
                                            <li><a href="https://themelamp.com/html/learnedu/faqs.html" role="menuitem" tabindex="-1">Faqs</a></li>
                                            <li><a href="https://themelamp.com/html/learnedu/404.html" role="menuitem" tabindex="-1">404 Page</a></li>
                                        </ul>
                                    </li>
                                    <li class="slicknav_collapsed slicknav_parent"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" tabindex="-1">Courses<i class="fa fa-angle-down"></i></a>
                                            <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                            <li><a href="https://themelamp.com/html/learnedu/courses.html" role="menuitem" tabindex="-1">Courses</a></li>
                                            <li><a href="https://themelamp.com/html/learnedu/course-single.html" role="menuitem" tabindex="-1">Course Single</a></li>
                                            <li><a href="https://themelamp.com/html/learnedu/course-single-video.html" role="menuitem" tabindex="-1">Course Single Video</a></li>
                                        </ul>
                                    </li>
                                    <li class="slicknav_collapsed slicknav_parent"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" tabindex="-1">Events<i class="fa fa-angle-down"></i></a>
                                            <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                            <li><a href="https://themelamp.com/html/learnedu/events.html" role="menuitem" tabindex="-1">Events</a></li>
                                            <li><a href="https://themelamp.com/html/learnedu/event-single.html" role="menuitem" tabindex="-1">Event Single</a></li>
                                        </ul>
                                    </li>
                                    <li class="slicknav_collapsed slicknav_parent"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" tabindex="-1">Blogs<i class="fa fa-angle-down"></i></a>
                                            <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                            <li><a href="https://themelamp.com/html/learnedu/blogs.html" role="menuitem" tabindex="-1">Blogs Grid Layout</a></li>
                                            <li><a href="https://themelamp.com/html/learnedu/blogs-left-sidebar.html" role="menuitem" tabindex="-1">Blogs Left Sidebar</a></li>
                                            <li><a href="https://themelamp.com/html/learnedu/blogs-right-sidebar.html" role="menuitem" tabindex="-1">Blogs Right Sidebar</a></li>
                                            <li><a href="https://themelamp.com/html/learnedu/blog-single-left-sidebar.html" role="menuitem" tabindex="-1">Blogs Single - Left Sidebar</a></li>
                                            <li><a href="https://themelamp.com/html/learnedu/blog-single.html" role="menuitem" tabindex="-1">Blogs Single - Right Sidebar</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="https://themelamp.com/html/learnedu/contact.html" role="menuitem" tabindex="-1">Contact</a></li>
                                </ul></div></div>
                    </div>
                    <div class="item text-right">
                        <div class="header-widget">
                            <div class="single-widget">
                                <a href="#">
                                    <i class="fa fa-user-secret" aria-hidden="true"></i>
                                    <h4>Sinh viên hiện tại</h4>
                                </a>
                            </div>
                            <div class="single-widget">
                                <a href="#">
                                    <i class="fa fa-user-o" aria-hidden="true"></i>
                                    <h4>Sinh viên tương lai</h4>
                                </a>
                            </div>
                            <div class="single-widget">
                                <a href="#">
                                    <i class="fa fa-power-off" aria-hidden="true"></i>
                                    <h4>Cán bộ</h4>
                                </a>
                            </div>
                        </div>
                        <!--							<div class="logo">-->
                        <!--								<a href="#">-->
                        <!--									<img src="assets/images/logo-bk.jpg">-->
                        <!--								</a>-->
                        <!--							</div>-->
                    </div>
                </div>
            </div>
        </div>
        <!--/ End Header Inner -->
        <!-- Header Menu -->
        <div class="header-menu">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="navbar navbar-default">
                            <div class="navbar-collapse">
                                <!-- Main Menu -->
                                @if (is_plugin_active('member'))
                                    <ul class="pull-left">
                                        @if (Auth::guard('member')->check())
                                            <li><a href="{{ route('public.member.dashboard') }}" rel="nofollow"><i class="fa fa-user"></i> <span>{{ Auth::guard('member')->user()->getFullName() }}</span></a></li>
                                            <li><a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" rel="nofollow"><i class="fa fa-sign-out"></i> {{ __('Logout') }}</a></li>
                                        @else
                                            <li><a href="{{ route('public.member.login') }}" rel="nofollow"><i class="fa fa-sign-in"></i> {{ __('Login') }}</a></li>
                                        @endif
                                    </ul>
                                    @auth('member')
                                        <form id="logout-form" action="{{ route('public.member.logout') }}" method="POST" style="display: none;">
                                            @csrf
                                        </form>
                                @endauth
                            @endif
                                <!-- End Main Menu -->
                                <!-- button -->

                                <!--/ End Button -->
                            </div>
                        </nav>
                        <div class="form-search">
                            <input type="text" placeholder="Tìm kiếm">
                            <a href="#" class="btn-search"><i class="fa fa-search" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/ End Header Menu -->
    </header>
    <!-- End Header -->
    <header class="header" id="header">
        <div class="header-wrap">
            <nav class="nav-top">
                <div class="container">
                    <div class="pull-left">
                        <div class="hi-icon-wrap hi-icon-effect-3 hi-icon-effect-3a">
                            <a href="{{ theme_option('facebook') }}" title="Facebook" class="hi-icon fa fa-facebook"></a>
                            <a href="{{ theme_option('twitter') }}" title="Twitter" class="hi-icon fa fa-google-plus"></a>
                            <a href="{{ theme_option('youtube') }}" title="Youtube" class="hi-icon fa fa-youtube"></a>
                        </div>
                    </div>
                    <div class="pull-right">
                        @if (is_plugin_active('member'))
                            <ul class="pull-left">
                                @if (Auth::guard('member')->check())
                                    <li><a href="{{ route('public.member.dashboard') }}" rel="nofollow"><i class="fa fa-user"></i> <span>{{ Auth::guard('member')->user()->getFullName() }}</span></a></li>
                                    <li><a href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" rel="nofollow"><i class="fa fa-sign-out"></i> {{ __('Logout') }}</a></li>
                                @else
                                    <li><a href="{{ route('public.member.login') }}" rel="nofollow"><i class="fa fa-sign-in"></i> {{ __('Login') }}</a></li>
                                @endif
                            </ul>
                            @auth('member')
                                <form id="logout-form" action="{{ route('public.member.logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            @endauth
                        @endif
                        <div class="pull-left">
                            <div class="pull-right">
                                <div class="language-wrapper">
                                    {!! apply_filters('language_switcher') !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <header data-sticky="false" data-sticky-checkpoint="200" data-responsive="991" class="page-header page-header--light">
        <div class="container">
            <!-- LOGO-->
            <div class="page-header__left"><a href="{{ route('public.single') }}" class="page-logo">
                    @if (!theme_option('logo'))
                        <span>Bot</span>ble
                    @else
                        <img src="{{ get_image_url(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}" height="50">
                    @endif
                </a></div>
            <div class="page-header__right">
                <!-- MOBILE MENU-->
                <div class="navigation-toggle navigation-toggle--dark"><span></span></div>
                <div class="pull-left">
                    <!-- SEARCH-->
                    <div class="search-btn c-search-toggler"><i class="fa fa-search close-search"></i></div>
                    <!-- NAVIGATION-->
                    <nav class="navigation navigation--light navigation--fade navigation--fadeLeft">
                        {!!
                            Menu::renderMenuLocation('main-menu', [
                                'options' => ['class' => 'menu sub-menu--slideLeft'],
                                'view'    => 'main-menu',
                            ])
                        !!}
                    </nav>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        @if (is_plugin_active('blog'))
            <div class="super-search hide">
                <form class="quick-search" action="{{ route('public.search') }}">
                    <input type="text" name="q" placeholder="{{ __('Type to search...') }}" class="form-control search-input" autocomplete="off">
                    <span class="close-search">&times;</span>
                </form>
                <div class="search-result"></div>
            </div>
        @endif
    </header>
    <div id="page-wrap">

