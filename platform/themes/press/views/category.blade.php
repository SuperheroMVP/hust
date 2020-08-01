@php
    $urli = NULL;
        foreach (request()->segments() as $segment){
            $urli = $urli."/".$segment;
        }
@endphp
{{--<section class="inner-header divider parallax layer-overlay overlay-dark-5"--}}
{{--         style="background-image: url({{get_object_image(get_slide('slide')->image)}});">--}}
{{--    <div class="container pt-70 pb-20 fix-padding-banner-mobile">--}}
{{--        <!-- Section Content -->--}}
{{--        <div class="section-content">--}}
{{--            <div class="row">--}}
{{--                <div class="col-md-12">--}}
{{--                    @if($urli == "/profile/all")--}}
{{--                        <h3 class="page-intro__title">Cán bộ giảng viên</h3>--}}
{{--                    @else--}}
{{--                        <h3 class="page-intro__title">{{ $category->name }}</h3>--}}
{{--                    @endif--}}
{{--                    {!! Theme::breadcrumb()->render() !!}--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</section>--}}
<div class="banner">
    <img src="{{ get_object_image(get_data_tuyensinh("banner")->image )}}">
</div>
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
                                        <div class="thumb"><img class="img-fullwidth"
                                                                src="{{ get_object_image($profile->image, 'post') }}"
                                                                alt="{{ $profile->name }}"></div>
                                        <div class="content border-1px border-bottom-theme-color-2-2px p-15 bg-light clearfix">
                                            <h4 class="name text-theme-color-2 mt-0"> {{ $profile->name }}</h4>
                                            <p class="mb-20 min-height-40">{{ $profile->chucvu}}</p>
                                            <ul class="styled-icons icon-dark icon-circled icon-theme-colored icon-sm pull-left flip">
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                            </ul>
                                            <a class="btn btn-theme-colored btn-sm pull-right flip"
                                               href="{{ asset($slug->key) }}">Xem thêm</a>
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
                        <div class="col-md-12 blog-pull-right">
                            <div class="row">
                                {{--                                @if ($posts->count() > 0)--}}
                                {{--                                    @foreach($posts as $post)--}}
                                {{--                                        <div class="col-sm-12 col-md-6 mt-10">--}}
                                {{--                                            <div class="thumb"><img alt="featured project"--}}
                                {{--                                                                    src="{{ get_object_image($post->image, 'post') }}"--}}
                                {{--                                                                    class="img-fullwidth" width="100%"></div>--}}
                                {{--                                            <h4 class="line-bottom mt-0 mt-sm-20">{{$post->name}}</h4>--}}
                                {{--                                            <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"--}}
                                {{--                                               href="{{$post->url}}">Xem thêm</a>--}}
                                {{--                                        </div>--}}
                                {{--                                    @endforeach--}}
                                {{--                                @else--}}
                                {{--                                    <h4>Không tìm thấy bài viết nào!</h4>--}}
                                {{--                                @endif--}}
                                {{--                            </div>--}}
                                {{--                            @if ($posts->count() > 0)--}}
                                {{--                                <nav class="pagination-wrap">--}}
                                {{--                                    {!! $posts->links() !!}--}}
                                {{--                                </nav>--}}
                                {{--                            @endif--}}
                                <div class="owl-carousel-4col owl-carousel owl-theme owl-loaded" data-dots="true">
                                    @if(get_posts_in_category('Đào tạo')->count() >0)
                                        @foreach(get_posts_in_category('Đào tạo') as $row)
                                            <div class="item">
                                                <div class="service-block mb-md-30 bg-white">
                                                    <div class="thumb"
                                                         style="background-image: url({{ $row->image}}); height: 220px;">
                                                        <img alt="featured project"
                                                             src="{{get_object_image($row->image, 'small') }}"
                                                             class="img-responsive img-fullwidth">
                                                    </div>
                                                    <div class="content text-left flip p-25 pt-0">
                                                        <h4 class="line-bottom mb-10">{{ $row->name }}</h4>
                                                        <p>{{ $row->description }}</p>
                                                        <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                                           href="{{ $row->url }}">Xem thêm</a>
                                                    </div>
                                                </div>
                                            </div>
                                        @endforeach
                                    @endif
                                </div>
                            </div>
                        </div>

                    </div>
            </section>
        @elseif($category->danhmuc == 'danhmuc_daotao')
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 blog-pull-right">
                            {{--                            <div class="single-service">--}}
                            {{--                                <img src="images/services/lg9.jpg" alt="">--}}
                            {{--                                <h3 class="text-theme-colored">Chemical Engineering</h3>--}}
                            {{--                                <h5><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo unde, <span class="text-theme-color-2">chemical engineering</span> corporis dolorum blanditiis ullam officia <span class="text-theme-color-2">our university </span>natus minima fugiat repellat! Corrupti voluptatibus aperiam voluptatem. Exercitationem, placeat, cupiditate.</em></h5>--}}
                            {{--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore suscipit, inventore aliquid incidunt, quasi error! Natus esse rem eaque asperiores eligendi dicta quidem iure, excepturi doloremque eius neque autem sint error qui tenetur, modi provident aut, maiores laudantium reiciendis expedita. Eligendi</p>--}}
                            {{--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatem officiis quod animi possimus a, iure nam sunt quas aperiam non recusandae reprehenderit, nesciunt cumque pariatur totam repellendus delectus? Maxime quasi earum nobis, dicta, aliquam facere reiciendis, delectus voluptas, ea assumenda blanditiis placeat dignissimos quas iusto repellat cumque.</p>--}}
                            {{--                            </div>--}}


                        </div>
                        <div class="col-sm-12 col-md-4">
                            <div class="sidebar sidebar-left mt-sm-30 ml-40">
                                <div class="widget">
                                    <h4 class="widget-title line-bottom">Danh mục <span class="text-theme-color-2"> Đào tạo</span>
                                    </h4>
                                    <div class="services-list">
                                        <ul class="list list-border angle-double-right">
                                            {{--                                            {!!--}}
                                            {{--                                                Menu::renderMenuLocation('content-menu', [--}}
                                            {{--                                                    'theme' => true,--}}
                                            {{--                                                    'view' => 'category_daotao_menu',--}}
                                            {{--                                                ])--}}
                                            {{--                                            !!}--}}
                                            <?php $i = 0?>
                                            @foreach(get_posts_in_category('Đào tạo') as $row)

                                                <li
                                                        @if($i==0)
                                                        class="active"
                                                        @endif
                                                ><a href="{{ $row->url }}">{{ $row->name }}</a></li>

                                                <?php $i++;?>
                                            @endforeach

                                        </ul>
                                    </div>
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
                                             src="{{ get_object_image($category->image, 'post') }}">
                                    </div>
                                    <div class="col-md-12">
                                        @foreach($posts as $cat)
                                            <div class="col-xs-12 col-sm-6 col-md-3 pb-sm-20">
                                                <div class="image-box-thum">
                                                    <img class="img-fullwidth" alt=""
                                                         src="{{ get_object_image($cat->image, 'post') }}">
                                                </div>
                                                <div class="image-box-details pt-20 pb-sm-20">
                                                    <h4 class="title text-uppercase line-bottom mt-0">{{$cat->name}}</h4>
                                                    <p class="desc mb-10">{{$cat->description}}</p>
                                                    <a href="{{$cat->url}}" class="btn btn-xs btn-theme-colored">Xem
                                                        Thêm</a>
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
                                                     src="{{ get_object_image($cat->image, 'post') }}">
                                            </div>
                                            <div class="image-box-details pt-20 pb-sm-20">
                                                <h4 class="title text-uppercase line-bottom mt-0">{{$cat->name}}</h4>
                                                <p class="desc mb-10">{{$cat->description}}</p>
                                                <a href="{{$cat->url}}" class="btn btn-xs btn-theme-colored">Xem
                                                    Thêm</a>
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
                                                     src="{{ get_object_image($cat->image, 'post') }}">
                                            </div>
                                            <div class="image-box-details pt-20 pb-sm-20">
                                                <h4 class="title text-uppercase line-bottom mt-0">{{$cat->name}}</h4>
                                                <p class="desc mb-10">{{$cat->description}}</p>
                                                @if($cat->name == "Trung tâm & phòng thí nghiệm")
                                                    <a href="/trung-tam-va-phong-thi-nghiem"
                                                       class="btn btn-xs btn-theme-colored">Xem
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
                                            <div class="thumb"><img alt="featured project"
                                                                    src="{{ get_object_image($post->image, 'post') }}"
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
                                                            {{ $sub->name }}</a></li>
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
                                                <a class="post-thumb" href="{{ $related_item->url }}"><img
                                                            src="{{ get_object_image($related_item->image) }}" alt=""
                                                            width="50%"></a>
                                                <div class="post-right">
                                                    <h5 class="post-title mt-0"><a
                                                                href="#">{{ $related_item->name }}</a>
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
        @elseif( $category->danhmuc == 'btandtt' )
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 blog-pull-right">
                            @if ($posts->count() > 0)
                                @foreach($posts as $post)
                                    <div class="row mb-15">
                                        <div class="col-sm-12 col-md-12">
                                            <div class="thumb">
                                                @if($post->image != null)
                                                    <img alt="featured project"
                                                         src="{{ get_object_image($post->image, 'post') }}"
                                                         class="img-fullwidth">
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-sm-12 col-md-12">
                                            <div style="background-color: #ececec; padding: 15px;">
                                                <h4 class="line-bottom">{{$post->name}}</h4>
                                                <p>{{$post->description}}</p>
                                                <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                                   href="{{$post->url}}">Xem thêm</a>
                                            </div>
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
                            <div class="learnedu-sidebar left widget">
                                <!-- baif vieets nooir baatj -->
                                <div class="single-widget categories">
                                    <h3 class="line-bottom">{{$post->categories[0]->name}}</h3>
                                    <ul id="menu-dt list list-border angle-double-right">
                                        @foreach(get_post_is_featured_by_categorys( $post->categories , 12 ) as $postt)
                                            <li>
                                                <a href="{{$postt->url}}" target="">{{$postt->name}}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                                <!-- baif vieest mowis -->
                                <!-- Categories -->
                                <div class="single-widget categories">
                                    <h3 class="line-bottom">Bài viết mới nhất</h3>
                                    @foreach (get_post_by_categorys( $post->categories , 12 ) as $related_item)
                                        <article class="post media-post clearfix pb-0 mb-10">
                                            <a class="post-thumb"  href="{{ $related_item->url }}"><img src="{{ get_object_image($related_item->image) }}"   alt="" width="75" height="75"> </a>
                                            <div class="post-right">
                                                <h5 class="post-title mt-0"><a href="{{ $related_item->url }}">{{ $related_item->name }}</a></h5>
                                            </div>
                                        </article>
                                        <hr>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
        @elseif( $category->danhmuc == 'tintuc' )
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="learnedu-sidebar left widget">
                                <!-- Categories -->
                                <div class="single-widget categories">
                                    <h3 class="title">Danh mục tin tức</h3>
                                    <ul id="menu-dt list list-border angle-double-right">
                                        @foreach(get_child_menu('Tin tức') as $sub)
                                            <li>
                                                <a href="{{ $sub->url }}" target="{{ $sub->target }}">
                                                    {{ $sub->name }}</a>
                                                @if(get_child_menu_where_id($sub->id)->count() > 0)
                                                    <ul>
                                                        @foreach(get_child_menu_where_id($sub->id) as $e_sub)
                                                            <li>
                                                                <a href="{{ $e_sub->url }}"
                                                                   target="{{ $e_sub->target }}">
                                                                    {{ $e_sub->name }}</a>
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                @endif
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9 blog-pull-right">
                            <div class="row">
                                @if ($posts->count() > 0)
                                    @foreach($posts as $post)
                                        <div class="col-sm-12 col-md-3 mt-10">
                                            <div class="thumb">
                                                <img alt="featured project"
                                                     src="{{ get_object_image($post->image, 'post') }}"
                                                     class="img-fullwidth" width="100%">
                                            </div>
                                            <h4 class="line-bottom mt-0 mt-sm-20">{{$post->name}}</h4>
                                            <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                               href="{{$post->url}}">Xem thêm
                                            </a>
                                        </div>
                                    @endforeach
                                @else
                                    <h4>Không tìm thấy bài viết nào!</h4>
                                @endif
                            </div>
                            @if ($posts->count() > 0)
                                <nav class="pagination-wrap">
                                    {!! $posts->links() !!}
                                </nav>
                            @endif
                        </div>
                    </div>

                </div>
            </section>
        @elseif( $category->danhmuc == 'tintuc_daotao' )
            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <h3 class="line-bottom mt-0 line-height-1">Tin tức mới nhất</span>
                            </h3>
                            <div class="latest-posts">
                                @foreach (get_post_new(5) as $related_item)
                                    <article class="post media-post clearfix pb-0 mb-10">
                                        <a class="post-thumb" href="{{ $related_item->url }}"><img
                                                    src="{{ get_object_image($related_item->image) }}" alt="" width="75"
                                                    height="75"> </a>
                                        <div class="post-right">
                                            <h5 class="post-title mt-0"><a
                                                        href="{{ $related_item->url }}">{{ $related_item->name }}</a>
                                            </h5>
                                            <p>Create at:{{$related_item->created_at->format('d-m-Y')}}</p>
                                            <a href="{{ $related_item->url }}" class="btn-read-more">Xem thêm</a>
                                        </div>
                                    </article>
                                @endforeach
                            </div>
                        </div>
                        <div class="col-md-9 blog-pull-right">
                            @foreach(get_child_menu('Tin tức') as $menu_child)
                                <div class="col-lg-12 col-md-12 mt-1">
                                    <div class="latest-posts">
                                        <article class="post media-post clearfix pb-0 mb-10">
                                            <a class="post-thumb" href="{{ $menu_child->url }}"><img
                                                        src="{{get_object_image($menu_child->image, 'post') }}" alt=""
                                                        width="250" height="120"> </a>
                                            <div class="post-right">
                                                <h5 class="post-title mt-0"><a
                                                            href="{{ $menu_child->url }}">{{$menu_child->name}}</a></h5>
                                                <p>Create at:{{$menu_child->created_at->format('d-m-Y')}}</p>
                                                <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                                   href="{{$menu_child->url}}">Xem thêm</a>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>

                </div>
            </section>
        @elseif( $category->danhmuc == 'cơ_cau_to_chuc' )
            <section class="bg-lighter">
                <div class="container pb-60">
                    <div class="section-content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="owl-carousel-4col owl-carousel owl-theme owl-loaded" data-dots="true">
                                    {{--                                    {{dd(get_posts_in_category('Cơ cấu tổ chức'))}}--}}
                                    @foreach(get_posts_in_category('Cơ cấu tổ chức') as $post_child)
                                        <div class="item">
                                            <div class="service-block mb-md-30 bg-white">
                                                <div class="thumb"
                                                     style="background-image: url({{ $post_child->image}}); max-height: 220px;">
                                                    <img alt="featured project"
                                                         src="{{get_object_image($post_child->image, 'medium') }}"
                                                         class="img-responsive img-fullwidth">
                                                </div>
                                                <div class="content text-left flip p-25 pt-0">
                                                    <h4 class="line-bottom mb-10">{{ $post_child->name }}</h4>
                                                    <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                                       href="{{ $post_child->url }}">Xem thêm</a>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
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
                                            <div class="thumb"><img alt="featured project"
                                                                    src="{{ get_object_image($post->image, 'post') }}"
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
                                        @foreach (get_post_new(3) as $related_item)
                                            <article class="post media-post clearfix pb-0 mb-10">
                                                <a class="post-thumb" href="{{ $related_item->url }}"><img
                                                            src="{{ get_object_image($related_item->image) }}"
                                                            alt=""></a>
                                                <div class="post-right">
                                                    <h5 class="post-title mt-0"><a
                                                                href="#">{{ $related_item->name }}</a>
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

