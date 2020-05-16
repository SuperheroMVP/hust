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
                            <img src="{{ get_image_url(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}">
                        </a>
                    </div>
                    <div class="header-widget">
                        <span>ĐẠI HỌC BÁCH KHOA HÀ NỘI</span>
                        <span>VIỆN ĐIỆN TỬ - VIỄN THÔNG</span>
                    </div>
                    <div class="mobile-menu">
                        <div class="slicknav_menu"><a href="./LearnEdu − Education &amp; Courses HTML5 Template_files/index.html" aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed"><span class="slicknav_menutxt"></span><span class="slicknav_icon slicknav_no-text"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a>

                            <ul class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
                                <li class="active slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="#" tabindex="-1">Home<i class="fa fa-angle-down"></i></a>
                                        <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                        <li><a href="#" role="menuitem" tabindex="-1">Homepage Default</a></li>
                                        <li><a href="#" role="menuitem" tabindex="-1">Homepage Animation</a></li>
                                    </ul>
                                </li>
                                <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="#" tabindex="-1">Pages<i class="fa fa-angle-down"></i></a>
                                        <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                        <li><a href="#" role="menuitem" tabindex="-1">About Us</a></li>
                                        <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="#" tabindex="-1">Teachers<i class="fa fa-angle-right"></i></a>
                                                <span class="slicknav_arrow">►</span></a><ul class="dropdown submenu slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                                <li><a href="#" role="menuitem" tabindex="-1">Teachers V1</a></li>
                                                <li><a href="#" role="menuitem" tabindex="-1">Teachers V2</a></li>
                                                <li><a href="#" role="menuitem" tabindex="-1">Teacher Single</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#" role="menuitem" tabindex="-1">Testimonials</a></li>
                                        <li><a href="#" role="menuitem" tabindex="-1">Faqs</a></li>
                                        <li><a href="#" role="menuitem" tabindex="-1">404 Page</a></li>
                                    </ul>
                                </li>
                                <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="#" tabindex="-1">Courses<i class="fa fa-angle-down"></i></a>
                                        <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                        <li><a href="#" role="menuitem" tabindex="-1">Courses</a></li>
                                        <li><a href="#" role="menuitem" tabindex="-1">Course Single</a></li>
                                        <li><a href="#" role="menuitem" tabindex="-1">Course Single Video</a></li>
                                    </ul>
                                </li>
                                <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="#" tabindex="-1">Events<i class="fa fa-angle-down"></i></a>
                                        <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                        <li><a href="#" role="menuitem" tabindex="-1">Events</a></li>
                                        <li><a href="#" role="menuitem" tabindex="-1">Event Single</a></li>
                                    </ul>
                                </li>
                                <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"><a href="#" tabindex="-1">Blogs<i class="fa fa-angle-down"></i></a>
                                        <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                        <li><a href="#" role="menuitem" tabindex="-1">Blogs Grid Layout</a></li>
                                        <li><a href="#" role="menuitem" tabindex="-1">Blogs Left Sidebar</a></li>
                                        <li><a href="#" role="menuitem" tabindex="-1">Blogs Right Sidebar</a></li>
                                        <li><a href="#" role="menuitem" tabindex="-1">Blogs Single - Left Sidebar</a></li>
                                        <li><a href="#" role="menuitem" tabindex="-1">Blogs Single - Right Sidebar</a></li>
                                    </ul>
                                </li>
                                <li><a href="#" role="menuitem" tabindex="-1">Contact</a></li>
                            </ul></div></div>
                </div>
                <div class="item text-right">
                    <div class="header-widget">
                        {!!
                        Menu::renderMenuLocation('header-menu', [
                            'options' => ['class' => 'menu sub-menu--slideLeft'],
                            'view'    => 'header-menu',
                        ])
                    !!}
                    </div>
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
                        {!!
                        Menu::renderMenuLocation('main-menu', [
                            'options' => ['class' => 'menu sub-menu--slideLeft'],
                            'view'    => 'main-menu',
                        ])
                    !!}
                        </div>
                    </nav>
                    @if (is_plugin_active('blog'))
                        <div class="form-search">
                            <form class="quick-search" action="{{ route('public.search') }}">
                                <input type="text" name="q" placeholder="{{ __('Type to search...') }}" class="form-control search-input" autocomplete="off">
                            </form>
                            <div class="search-result"></div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <!--/ End Header Menu -->
</header>
