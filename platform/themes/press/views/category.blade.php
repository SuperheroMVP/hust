@php
    $urli = NULL;
        foreach (request()->segments() as $segment){
            $urli = $urli."/".$segment;
        }
@endphp
<section class="inner-header divider parallax layer-overlay overlay-dark-5"
         style="background-image: url({{get_object_image(get_slide('slide')->image)}}); background-position: 50% 97px;">
    <div class="container pt-70 pb-20">
        <!-- Section Content -->
        <div class="section-content">
            <div class="row">
                <div class="col-md-12">
                    @if($urli == "/profile/all")
                        <h3 class="page-intro__title">Cán bộ giảng viên</h3>
                    @else
                        <h3 class="page-intro__title">{{ $category->name }}</h3>
                    @endif
                    {!! Theme::breadcrumb()->render() !!}
                </div>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <!-- Blogs -->
    <section class="blog b-archives section">
        @if($urli == "/profile/all")
            <div style="margin-top: 20px;">
                @php
                    $profiles = get_all_profile();
                @endphp
                @if ($profile->count() > 0)
                    <div id="content" class="row">
                        @foreach ($profiles as $profile)
                            @php
                                $slug = get_slug_profile($profile->id);
                            @endphp
                            <section id="team">
                                        <div class="col-xs-12 col-sm-6 col-md-3 sm-text-center mb-30 mb-sm-30">
                                            <div class="team maxwidth400">
                                                <div class="thumb"><img class="img-fullwidth" src="{{ get_object_image($profile->image, 'medium') }}" alt="{{ $profile->name }}"></div>
                                                <div class="content border-1px border-bottom-theme-color-2-2px p-15 bg-light clearfix">
                                                    <h4 class="name text-theme-color-2 mt-0"> {{ $profile->name }}</h4>
                                                    <p class="mb-20">{{ $profile->chucvu}}</p>
                                                    <ul class="styled-icons icon-dark icon-circled icon-theme-colored icon-sm pull-left flip">
                                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                    </ul>
                                                    <a class="btn btn-theme-colored btn-sm pull-right flip" href="{{ asset($slug->key) }}">Xem thêm</a>
                                                </div>
                                            </div>
                                        </div>
                            </section>
                        @endforeach
                    </div>
                @else
                    <div>
                        <p>{{ __('Không tìm thấy bài viết nào!') }}</p>
                    </div>
                @endif
            </div>
            <input type='hidden' id='current_page'/>
            <input type='hidden' id='show_per_page'/>
            <div id="page_navigation"></div>
            <br>
        @elseif($category->danhmuc == 'daotao')
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 blog-pull-right">
                            @if ($posts->count() > 0)
                                @foreach($posts as $post)
                                    <div class="row mb-15">
                                        <div class="col-sm-6 col-md-4">
                                            <div class="thumb"><img alt="featured project" src="{{ get_object_image($post->image, 'medium') }}"
                                                                    class="img-fullwidth"></div>
                                        </div>
                                        <div class="col-sm-6 col-md-8">
                                            <h4 class="line-bottom mt-0 mt-sm-20">{{$post->name}}</h4>
                                            <ul class="review_text list-inline">
                                            </ul>
                                            <p>{{$post->description}}</p>
                                            <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                               href="{{$post->url}}">Xem thêm</a>
                                        </div>
                                    </div>
                                    <hr>
                                @endforeach
                            @else
                                <div>
                                    <br>
                                    <p>{{ __('Không tìm thấy bài viết nào!') }}</p>
                                </div>
                            @endif
                            @if ($posts->count() > 0)
                                <nav class="pagination-wrap">
                                    {!! $posts->links() !!}
                                </nav>
                            @endif
                        </div>
                        <div class="col-md-3" style="border-right: 2px solid;">
                            <div class="sidebar sidebar-left mt-sm-30">
                                <!-- Categories -->
                                <div class="single-widget categories">
                                    <h3 class="title">Chương trình đào tạo</h3>
                                    @foreach(get_menu_dao_tao('daotao') as $daotao)
                                        @if(get_menu_con_dao_tao($daotao->id))
                                            <style>
                                                #menu-dt li i {
                                                    margin-top: 5px;
                                                    float: right;
                                                }

                                                #menu-dt .dropdown {
                                                    display: none;
                                                }

                                                #menu-dt .show {
                                                    display: block;
                                                }
                                            </style>
                                            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                                            <script>
                                                jQuery(document).ready(function () {
                                                    jQuery('.dropbtn').click(function (event) {
                                                        var id = event.target.id;
                                                        jQuery(`.${id}`).toggleClass('show');
                                                    });
                                                });
                                            </script>
                                            <ul id="menu-dt">
                                                @foreach(get_menu_con_dao_tao($daotao->id) as $sub)
                                                    <li><b style="font-size: 17px;">
                                                        <a href="{{ $sub->url }}" target="{{ $sub->target }}">
                                                            {{ $sub->name }}</a> @if(get_menu_con_dao_tao($sub->id)->count() > 0)
                                                            <i class="fa fa-chevron-circle-right dropbtn"
                                                               id="{{ $sub->id }}"></i> @endif </b></li>
                                                    @if(get_menu_con_dao_tao($sub->id)->count() > 0)
                                                        <ul class="dropdown {{ $sub->id }}"
                                                            style="margin-left: 15px;">
                                                            @foreach(get_menu_con_dao_tao($sub->id) as $child)
                                                                <li>
                                                                    <a href="{{ $child->url }}"
                                                                       target="{{ $child->target }}" style="font-size: 16px;">
                                                                        {{ $child->name }}</a>
                                                                    @if(get_menu_con_dao_tao($child->id)->count() > 0)
                                                                        <i class="fa fa-chevron-circle-right dropbtn"
                                                                           id="{{ $child->id }}"></i> @endif
                                                                </li>
                                                                @if(get_menu_con_dao_tao($child->id)->count() > 0)
                                                                    <ul class="dropdown  {{ $child->id }}"
                                                                        id="{{ $sub->id }}"
                                                                        style="margin-left: 30px;">
                                                                        @foreach(get_menu_con_dao_tao($child->id) as $last)
                                                                            <li>
                                                                                <a href="{{ $last->url }}"
                                                                                   target="{{ $last->target }}">
                                                                                    {{ $last->name }}</a>
                                                                            </li>
                                                                        @endforeach
                                                                        <li></li>
                                                                    </ul>
                                                                @endif
                                                            @endforeach
                                                            <li></li>
                                                        </ul>
                                                    @endif
                                                @endforeach
                                            </ul>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
        @elseif($category->danhmuc == 'conso')
            <div class="col-lg-12 col-12">
                <!-- Start main-content -->
                <div class="main-content">

                    <!-- Section: About  -->
                    <section>
                        <div class="container">
                            <div class="section-content">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6 pb-sm-20 ">
                                        <h3 class="line-bottom font-20 text-theme-colored text-uppercase mb-10 mt-0">{{$category->name}}</h3>
                                        <p>{{$category->description}}</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 pb-sm-20 ">
                                        <img class="img-fullwidth" alt=""
                                             src="{{ get_object_image($category->image, 'medium') }}">
                                    </div>
                                    <div class="col-md-12">
                                    @foreach($posts as $cat)
                                        <div class="col-xs-12 col-sm-6 col-md-3 pb-sm-20">
                                            <div class="image-box-thum">
                                                <img class="img-fullwidth" alt=""
                                                     src="{{ get_object_image($cat->image, 'medium') }}">
                                            </div>
                                            <div class="image-box-details pt-20 pb-sm-20">
                                                <h4 class="title text-uppercase line-bottom mt-0">{{$cat->name}}</h4>
                                                <p class="desc mb-10">{{$cat->description}}</p>
                                                <a href="{{$cat->url}}" class="btn btn-xs btn-theme-colored">Xem Thêm</a>
                                            </div>
                                        </div>
                                    @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Section: Features -->

                </div>
            </div>
        @elseif($category->danhmuc == 'lab')
            <div class="col-lg-12 col-12">
                <!-- Start main-content -->
                <div class="main-content">

                    <!-- Section: About  -->
                    <section>
                        <div class="container">
                            <div class="section-content">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-3 pb-sm-20 ">
                                        <h2 class="line-bottom font-20 text-theme-colored text-uppercase mb-10 mt-0">
                                            Centers<span class="text-theme-color-2">&Labs</span></h2>
                                        <p>{{$category->description}}</p>
                                    </div>
                                    @foreach($posts as $cat)
                                        <div class="col-xs-12 col-sm-6 col-md-3 pb-sm-20">
                                            <div class="image-box-thum">
                                                <img class="img-fullwidth" alt=""
                                                     src="{{ get_object_image($cat->image, 'medium') }}">
                                            </div>
                                            <div class="image-box-details pt-20 pb-sm-20">
                                                <h4 class="title text-uppercase line-bottom mt-0">{{$cat->name}}</h4>
                                                <p class="desc mb-10">{{$cat->description}}</p>
                                                <a href="{{$cat->url}}" class="btn btn-xs btn-theme-colored">Xem Thêm</a>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Section: Features -->

                </div>
            </div>
        @elseif( $category->danhmuc == 'nghiencuu')
            <div class="col-lg-12 col-12">
                <!-- Start main-content -->
                <div class="main-content">

                    <!-- Section: About  -->
                    <section>
                        <div class="container">
                            <div class="section-content">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-3 pb-sm-20 ">
                                        <h2 class="line-bottom font-20 text-theme-colored text-uppercase mb-10 mt-0">
                                            Chào mừng đến với<span class="text-theme-color-2"> SET</span></h2>
                                        <p>{{$category->description}}</p>
                                    </div>
                                    @foreach(get_page_nghien_cuu('nghiencuu') as $cat)
                                        <div class="col-xs-12 col-sm-6 col-md-3 pb-sm-20">
                                            <div class="image-box-thum">
                                                <img class="img-fullwidth" alt=""
                                                     src="{{ get_object_image($cat->image, 'medium') }}">
                                            </div>
                                            <div class="image-box-details pt-20 pb-sm-20">
                                                <h4 class="title text-uppercase line-bottom mt-0">{{$cat->name}}</h4>
                                                <p class="desc mb-10">{{$cat->description}}</p>
                                                @if($cat->name == "Trung tâm & phòng thí nghiệm")
                                                    <a href="/centerlabs-vn" class="btn btn-xs btn-theme-colored">Xem
                                                        Thêm</a>
                                                @else
                                                <a href="{{$cat->url}}" class="btn btn-xs btn-theme-colored">Xem
                                                    Thêm</a>
                                                @endif
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Section: Features -->

                </div>
            </div>
        @elseif( $category->danhmuc == 'mucnghiencuu')
        <!-- Section: Course list -->
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 blog-pull-right">
                            @if ($posts->count() > 0)
                            @foreach($posts as $post)
                            <div class="row mb-15">
                                <div class="col-sm-6 col-md-4">
                                    <div class="thumb"><img alt="featured project" src="{{ get_object_image($post->image, 'medium') }}"
                                                            class="img-fullwidth"></div>
                                </div>
                                <div class="col-sm-6 col-md-8">
                                    <h4 class="line-bottom mt-0 mt-sm-20">{{$post->name}}</h4>
                                    <ul class="review_text list-inline">
                                    </ul>
                                    <p>{{$post->description}}</p>
                                    <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                       href="{{$post->url}}">Xem thêm</a>
                                </div>
                            </div>
                            <hr>
                            @endforeach
                            @else
                                <div>
                                    <br>
                                    <p>{{ __('Không tìm thấy bài viết nào!') }}</p>
                                </div>
                            @endif
                            @if ($posts->count() > 0)
                                <nav class="pagination-wrap">
                                    {!! $posts->links() !!}
                                </nav>
                            @endif
                        </div>
                        <div class="col-md-3" style="border-right: 2px solid;">
                            <div class="sidebar sidebar-left mt-sm-30">
                                @if(count(get_menu_con_dao_tao($category->id)) > 0)
                                <div class="widget">
                                    <h5 class="widget-title line-bottom">Danh mục con</h5>
                                    <div class="categories">
                                        <ul class="list list-border angle-double-right">
                                            @foreach(get_menu_con_dao_tao($category->id) as $sub)
                                                <li>
                                                    <a href="{{ $sub->url }}" target="{{ $sub->target }}">
                                                        {{ $sub->name }}</a> </li>
                                                @if(get_menu_con_dao_tao($sub->id)->count() > 0)
                                                        @foreach(get_menu_con_dao_tao($sub->id) as $child)
                                                            <li>
                                                                <a href="{{ $child->url }}"
                                                                   target="{{ $child->target }}">
                                                                    {{ $child->name }}</a>
                                                            </li>
                                                            @if(get_menu_con_dao_tao($child->id)->count() > 0)
                                                                    @foreach(get_menu_con_dao_tao($child->id) as $last)
                                                                        <li>
                                                                            <a href="{{ $last->url }}"
                                                                               target="{{ $last->target }}">
                                                                                {{ $last->name }}</a>
                                                                        </li>
                                                                    @endforeach
                                                            @endif
                                                        @endforeach
                                                @endif
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                                @endif
                                <div class="widget">
                                    <h5 class="widget-title line-bottom">Bài viết mới nhất</h5>
                                    <div class="latest-posts">
                                        @foreach (get_post_new() as $related_item)
                                        <article class="post media-post clearfix pb-0 mb-10">
                                            <a class="post-thumb" href="{{ $related_item->url }}"><img src="{{ get_object_image($related_item->image) }}" alt="" width="50%"></a>
                                            <div class="post-right">
                                                <h5 class="post-title mt-0"><a href="#">{{ $related_item->name }}</a>
                                                </h5>
                                                <p>{{ $related_item->discription }}</p>
                                            </div>
                                        </article>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
        @elseif( $category->danhmuc == 'tintuc' )
            <section>
                <div class="container">
                    @if ($posts->count() > 0)
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row" style="background-color: #f0f0f0;">
                                <div class="col-sm-6 col-md-5" style="padding-left: 0;">
                                    <div class="thumb"><img alt="featured project" src="{{ get_object_image($posts[0]->image, 'medium') }}"
                                                            class="img-fullwidth"></div>
                                </div>
                                <div class="col-sm-6 col-md-7">
                                    <br>
                                    <h4 class="line-bottom mt-0 mt-sm-20">{{$posts[0]->name}}</h4>
                                    <ul class="review_text list-inline">
                                    </ul>
                                    <p>{{$posts[0]->description}}</p>
                                    <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                       href="{{$posts[0]->url}}">Xem thêm</a>
                                </div>
                            </div>
                            <hr>
                        </div>
                    </div>
                    @endif
                    <div class="row">
                        <div class="col-md-9">
                            @if ($posts->count() > 1)
                                @foreach($posts as $key => $post)
                                    @php if($key == 0){ continue; }  @endphp
                                    <div class="row mb-15">
                                        <div class="col-sm-6 col-md-4  blog-pull-right">
                                            <div class="thumb"><img alt="featured project" src="{{ get_object_image($post->image, 'medium') }}"
                                                                    class="img-fullwidth"></div>
                                        </div>
                                        <div class="col-sm-6 col-md-8">
                                            <h4 class="line-bottom mt-0 mt-sm-20">{{$post->name}}</h4>
                                            <ul class="review_text list-inline">
                                            </ul>
                                            <p>{{$post->description}}</p>
                                            <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                               href="{{$post->url}}">Xem thêm</a>
                                        </div>
                                    </div>
                                    <hr>
                                @endforeach
                            @else
                                <div>
                                    <br>
                                    <p>{{ __('Không tìm thấy bài viết nào!') }}</p>
                                </div>
                            @endif
                        </div>
                        <div class="col-md-3 border-left">
                            <div class="sidebar sidebar-left mt-sm-30">
                                <div class="widget">
                                    <h4 class="widget-title line-bottom">Bài viết mới nhất</h4>
                                    <div class="latest-posts">
                                        @foreach (get_post_new() as $related_item)
                                            <article class="post media-post clearfix pb-0 mb-10">
                                                <a class="post-thumb" href="{{ $related_item->url }}"><img src="{{ get_object_image($related_item->image) }}" alt="" width="60%"></a>
                                                <div class="post-right">
                                                    <h5 class="post-title mt-0"><a href="#">{{ $related_item->name }}</a>
                                                    </h5>
                                                    <p>{{ $related_item->discription }}</p>
                                                </div>
                                            </article>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            @if ($posts->count() > 0)
                                <nav class="pagination-wrap">
                                    {!! $posts->links() !!}
                                </nav>
                            @endif
                        </div>
                    </div>

                </div>
            </section>
        @else
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 blog-pull-right">
                            @if ($posts->count() > 0)
                                @foreach($posts as $post)
                                    <div class="row mb-15">
                                        <div class="col-sm-6 col-md-4">
                                            <div class="thumb"><img alt="featured project" src="{{ get_object_image($post->image, 'medium') }}"
                                                                    class="img-fullwidth"></div>
                                        </div>
                                        <div class="col-sm-6 col-md-8">
                                            <h4 class="line-bottom mt-0 mt-sm-20">{{$post->name}}</h4>
                                            <ul class="review_text list-inline">
                                            </ul>
                                            <p>{{$post->description}}</p>
                                            <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                               href="{{$post->url}}">Xem thêm</a>
                                        </div>
                                    </div>
                                    <hr>
                                @endforeach
                            @else
                                <div>
                                    <br>
                                    <p>{{ __('Không tìm thấy bài viết nào!') }}</p>
                                </div>
                            @endif
                            @if ($posts->count() > 0)
                                <nav class="pagination-wrap">
                                    {!! $posts->links() !!}
                                </nav>
                            @endif
                        </div>
                        <div class="col-md-3">
                            <div class="sidebar sidebar-left mt-sm-30">
                                <div class="widget">
                                    <h5 class="widget-title line-bottom">Bài viết mới nhất</h5>
                                    <div class="latest-posts">
                                        @foreach (get_post_new() as $related_item)
                                            <article class="post media-post clearfix pb-0 mb-10">
                                                <a class="post-thumb" href="{{ $related_item->url }}"><img src="{{ get_object_image($related_item->image) }}" alt=""></a>
                                                <div class="post-right">
                                                    <h5 class="post-title mt-0"><a href="#">{{ $related_item->name }}</a>
                                                    </h5>
                                                    <p>{{ $related_item->discription }}</p>
                                                </div>
                                            </article>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
        @endif
    </section>
</div>
</section>

