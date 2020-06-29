<!-- Start main-content -->
<!-- Start Slider Area -->
<div class="section-content">
    <div class="owl-carousel-1col owl-carousel owl-theme owl-loaded" data-dots="true">
        @foreach( get_img_slidebar('banner') as $slide)
            <div class="item">
                <img src="{{ get_object_image($slide->image, '') }}">
            </div>
        @endforeach

    </div>
</div>

<!--/ End Slider Area -->
@if (is_plugin_active('blog'))
    <!-- Section: About -->
    <section class="">
        <div class="container">
            <div class="section-content">
                @foreach(get_page_for_template('gioithieu', 1) as $about)
                    <div class="row">
                        <div class="col-md-6">
                            <h2 class="text-uppercase font-weight-600 mt-0 font-28 line-bottom">Viện điện tử viễn
                                thông</h2>
                            <p class="text-theme-colored" style="-webkit-line-clamp: 6;
                                  -webkit-box-orient: vertical;
                                  overflow: hidden;
                                  display: -webkit-box;">{{$about->description}}</p>
                            <a class="btn btn-theme-colored btn-flat btn-lg mt-10 mb-sm-30" href="{{$about-> url}}">Xem
                                thêm →</a>
                        </div>
                        <div class="col-md-6">
                            <div class="video-popup">
                                {!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, $about->video, $about) !!}
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    @foreach (get_all_categories(['categories.status' => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED, 'categories.parent_id' => 0, 'is_featured' => 1]) as $category)
        @php
            $allRelatedCategoryIds = array_unique(array_merge(app(\Botble\Blog\Repositories\Interfaces\CategoryInterface::class)->getAllRelatedChildrenIds($category), [$category->id]));
            $posts = app(\Botble\Blog\Repositories\Interfaces\PostInterface::class)->getByCategoryIsFeatured($allRelatedCategoryIds, 0, $loop->index % 2 == 0 ? 6 : 5);
        @endphp
        @if($category->name == "Đề tài khoa học")
            <!-- Section: COURSES -->
            <section class="bg-lighter">
                <div class="container pb-60">
                    <div class="section-title mb-10">
                        <div class="row">
                            <div class="col-md-8">
                                <h2 class="mt-0 text-uppercase font-28 line-bottom line-height-1">{{$category->name}}</h2>
                            </div>
                        </div>
                    </div>
                    <div class="section-content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="owl-carousel-4col owl-carousel owl-theme owl-loaded" data-dots="true">
                                    @foreach($posts as $post)
                                        <div class="item">
                                            <div class="service-block mb-md-30 bg-white">
                                                <div class="thumb"
                                                     style="background-image: url({{ get_object_image($post->image, 'medium') }}); height: 220px;">
                                                    {{--                                                    <img alt="featured project"--}}
                                                    {{--                                                                        src="{{ get_object_image($post->image, 'medium') }}"--}}
                                                    {{--                                                                        class="img-responsive img-fullwidth">--}}
                                                </div>
                                                <div class="content text-left flip p-25 pt-0">
                                                    <h4 class="line-bottom mb-10">{{ $post->name }}</h4>
                                                    <p>{{ $post->description }}</p>
                                                    <a class="btn btn-dark btn-theme-colored btn-sm text-uppercase mt-10"
                                                       href="{{ $post->url }}">Xem thêm</a>
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
            <!-- Divider: Funfact -->
            <section class="divider parallax layer-overlay overlay-theme-colored-9" data-bg-img="{{ get_object_image('access/bg2.jpg', 'medium') }}"
                     data-parallax-ratio="0.7"
                     style=" background-position: 50% 665px;">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-2 mb-md-50">
                            <div class="funfact text-center">
                                <i class="fa fa-institution mt-5 text-theme-color-2"></i>
                                <h2 data-animation-duration="2000" data-value="5248"
                                    class="animate-number text-white mt-0 font-38 font-weight-500 appeared">{{ theme_option('top_vn') }}</h2>
                                <h5 class="text-white text-uppercase mb-0">Số 1 Việt nam và Top 400 thế giới</h5>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2 mb-md-50">
                            <div class="funfact text-center">
                                <i class="fa fa-clock-o mt-5 text-theme-color-2"></i>
                                <h2 data-animation-duration="2000" data-value="5248"
                                    class="animate-number text-white mt-0 font-38 font-weight-500 appeared">{{ theme_option('nam_kinh_nghiem') }}</h2>
                                <h5 class="text-white text-uppercase mb-0">Năm kinh nghiệm</h5>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2 mb-md-50">
                            <div class="funfact text-center">
                                <i class="fa fa-graduation-cap mt-5 text-theme-color-2"></i>
                                <h2 data-animation-duration="2000" data-value="5248"
                                    class="animate-number text-white mt-0 font-38 font-weight-500 appeared">{{ theme_option('truong_doi_tac') }}</h2>
                                <h5 class="text-white text-uppercase mb-0">Trường nước ngoài đối tác</h5>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2 mb-md-50">
                            <div class="funfact text-center">
                                <i class="fa fa-briefcase mt-5 text-theme-color-2"></i>
                                <h2 data-animation-duration="2000" data-value="675"
                                    class="animate-number text-white mt-0 font-38 font-weight-500 appeared">{{ theme_option('doanh_nghiep_doi_tac') }}</h2>
                                <h5 class="text-white text-uppercase mb-0">Doanh nghiệp đối tác</h5>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2 mb-md-50">
                            <div class="funfact text-center">
                                <i class="fa fa-video-camera mt-5 text-theme-color-2"></i>
                                <h2 data-animation-duration="2000" data-value="248"
                                    class="animate-number text-white mt-0 font-38 font-weight-500 appeared">{{ theme_option('phong_tnth') }}</h2>
                                <h5 class="text-white text-uppercase mb-0">Phòng thí nghiệm thực hành</h5>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-2 mb-md-0">
                            <div class="funfact text-center">
                                <i class="fa fa-trophy mt-5 text-theme-color-2"></i>
                                <h2 data-animation-duration="2000" data-value="24"
                                    class="animate-number text-white mt-0 font-38 font-weight-500 appeared">{{ theme_option('phong_tnnc') }}</h2>
                                <h5 class="text-white text-uppercase mb-0">Phòng thí nghiệm nghiên cứu</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Section: Why Choose Us -->
            <section id="event" class="bg-lighter">
                <div class="container pb-50">
                    <div class="section-content">
                        <div class="row">
{{--                            <div class="col-md-6">--}}
{{--                                <h3 class="text-uppercase line-bottom mt-0 line-height-1"><i--}}
{{--                                            class="fa fa-calendar mr-10"></i>Sự kiện <span class="text-theme-color-2">Nổi bật</span>--}}
{{--                                </h3>--}}
{{--                                @foreach(get_post_by_category_tag(3) as $post)--}}
{{--                                    <article class="post media-post clearfix pb-0 mb-10">--}}
{{--                                        <a href="{{ $post->url }}" class="post-thumb mr-20" style="width: 30%"><img--}}
{{--                                                    alt=""--}}
{{--                                                    src="{{ get_object_image($post->image, 'medium') }}"></a>--}}
{{--                                        <div class="post-right">--}}
{{--                                            <h4 class="mt-0 mb-5"><a href="{{ $post->url }}">{{ $post->name }}</a></h4>--}}
{{--                                            <ul class="list-inline font-12 mb-5">--}}
{{--                                                <li class="pr-0"><i--}}
{{--                                                            class="fa fa-calendar mr-5"></i>{{date_format($post->created_at,"d/m/yy H:i:s")}}--}}
{{--                                                </li>--}}
{{--                                                --}}{{--                                                <li class="pl-5"><i class="fa fa-map-marker mr-5"></i>New York</li>--}}
{{--                                            </ul>--}}
{{--                                            <p class="mb-0 font-13">{{ $post->description }}</p>--}}
{{--                                            <a class="text-theme-colored font-13" href="{{ $post->url }}">Xen thêm →</a>--}}
{{--                                        </div>--}}
{{--                                    </article>--}}
{{--                                @endforeach--}}

{{--                            </div>--}}
                            <div class="col-md-12">
                                @foreach(get_reason_set(5) as $index => $reason_set)
                                    @if($index == 0)
                                        <h3 class="line-bottom mt-0 line-height-1">{{$reason_set->name}}</span>
                                        </h3>
                                        <p class="mb-10">{!! apply_filters(REASONHUST_MODULE_SCREEN_NAME, $reason_set->content, $reason_set) !!}</p>
                                    @endif
                                @endforeach
                                <div id="accordion1" class="panel-group accordion">
                                    @foreach(get_reason_set(5) as $index => $reason_set)
                                        @if($index != 0)
                                            <div class="panel">
                                                <div class="panel-title"><a class="active" data-parent="#accordion1"
                                                                            data-toggle="collapse"
                                                                            href="#accordion1{{$index}}"
                                                                            aria-expanded="true">
                                                        <span class="open-sub"></span>{{$reason_set->name}}</a></div>
                                                <div id="accordion1{{$index}}" class="panel-collapse collapse"
                                                     role="tablist"
                                                     aria-expanded="true">
                                                    <div class="panel-content">
                                                        <p>{!! apply_filters(REASONHUST_MODULE_SCREEN_NAME, $reason_set->content, $reason_set) !!}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        @endif
                                    @endforeach

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Divider: testimonials -->
            <section class="divider parallax layer-overlay overlay-theme-colored-9" data-background-ratio="0.5"
                     data-bg-img="{{ get_object_image('access/bg2.jpg', 'medium') }}">
                <div class="container pb-50">
                    <div class="section-title">
                        <div class="row">
                            <div class="col-md-6">
                                <h2 class="mt-0 mb-0 text-uppercase line-bottom text-white font-28">Nói về SET<span
                                            class="font-30 text-theme-color-2">.</span></h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mb-10">
                            <div class="owl-carousel-2col boxed owl-carousel owl-theme owl-loaded" data-dots="true">
                                @foreach(get_about_set(5) as $about_set)
                                    <div class="item">
                                        <div class="testimonial pt-10">
                                            <div class="thumb pull-left mb-0 mr-0 pr-20">
                                                <img style="width: 120px; height: 120px;" class="img-circle" alt=""
                                                     src="{{ get_object_image($about_set->image, 'medium') }}">
                                            </div>
                                            <div class="ml-100 ">
                                                <h4 class="text-white mt-0">{!! apply_filters(ABOUTHUST_MODULE_SCREEN_NAME, $about_set->content, $about_set) !!}</h4>
                                                <p class="author mt-20">- <span
                                                            class="text-theme-color-2">{{ $about_set->name }},</span>
                                                    <small><em
                                                                class="text-gray-lightgray">{{ $about_set->description }}</em></small>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        @elseif($category->name == "Tin tức")
            <!-- Section: blog -->
            <section id="blog" class="bg-lighter">
                <div class="container">
                    <div class="section-title mb-10">
                        <div class="row">
                            <div class="col-md-8">
                                <h2 class="mt-0 text-uppercase font-28 line-bottom line-height-1">{{ $category->name }}</h2>
                            </div>
                        </div>
                    </div>
                    <div class="section-content">
                        <div class="row">
                            @php $i =0;  @endphp
                            @foreach($posts as $post)
                                @php $i++; @endphp
                                <div class="col-xs-12 col-sm-6 col-md-4 wow fadeInLeft" data-wow-duration="1s"
                                     data-wow-delay="0.3s"
                                     style="visibility: hidden; animation-duration: 1s; animation-delay: 0.3s; animation-name: none;">
                                    <article class="post clearfix mb-sm-30">
                                        <div class="entry-header">
                                            <div class="post-thumb thumb"
                                                 style="background-image: url({{ get_object_image($post->image, 'medium') }}); height: 220px;">
                                                {{--                                                <img src="{{ get_object_image($post->image, 'medium') }}"--}}
                                                {{--                                                     alt="{{ $post->name }}"--}}
                                                {{--                                                     class="img-responsive img-fullwidth">--}}
                                            </div>
                                        </div>
                                        <div class="entry-content p-20 pr-10 bg-white">
                                            <div class="entry-meta media mt-0 no-bg no-border">
                                                <div
                                                        class="entry-date media-left text-center flip bg-theme-colored pt-5 pr-15 pb-5 pl-15">
                                                </div>
                                                <div class="media-body pl-15">
                                                    <div class="event-content pull-left flip">
                                                        <h4 class="entry-title text-white text-uppercase m-0 mt-5"><a
                                                                    href="{{ $post->url }}">{{ $post->name }}</a></h4>
                                                        <ul class="list-inline font-12 mb-5">
                                                            <li class="pr-0"><i
                                                                        class="fa fa-calendar mr-5"></i>{{date_format($post->created_at,"d/m/yy")}}
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="mt-10">{{ $post->description }}</p>
                                            {{--                                            <p class="mt-10">{{ $post->created_at }}</p>--}}
                                            <a href="{{ $post->url }}" class="btn-read-more">Xem thêm</a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </article>
                                </div>
                                @if($i > 2 ) @break @endif
                            @endforeach
                        </div>
                    </div>
                </div>
            </section>
        @else
            <!-- Section: team -->
            <section>
                <div class="container">
                    <div class="section-title mb-10">
                        <div class="row">
                            <div class="col-md-8">
                                <h2 class="mt-0 text-uppercase font-28 line-bottom line-height-1">{{ $category->name }}</h2>
                            </div>
                        </div>
                    </div>
                    <div class="section-content">
                        <div class="row">
                            @foreach($posts as $key => $post)
                                <div class="col-xs-12 col-sm-6 col-md-4 wow fadeInLeft" data-wow-duration="1s"
                                     data-wow-delay="0.3s"
                                     style="visibility: hidden; animation-duration: 1s; animation-delay: 0.3s; animation-name: none;">
                                    <article class="post clearfix mb-sm-30">
                                        <div class="entry-header">
                                            <div class="post-thumb thumb"
                                                 style="background-image: url({{ get_object_image($post->image, 'medium') }}); height: 220px;">
                                                {{--                                                <img src="{{ get_object_image($post->image, 'medium') }}"--}}
                                                {{--                                                     alt="{{ $post->name }}"--}}
                                                {{--                                                     class="img-responsive img-fullwidth">--}}
                                            </div>
                                        </div>
                                        <div class="entry-content p-20 pr-10 bg-white">
                                            <div class="entry-meta media mt-0 no-bg no-border">
                                                <div
                                                        class="entry-date media-left text-center flip bg-theme-colored pt-5 pr-15 pb-5 pl-15">
                                                </div>
                                                <div class="media-body pl-15">
                                                    <div class="event-content pull-left flip">
                                                        <h4 class="entry-title text-white text-uppercase m-0 mt-5"><a
                                                                    href="{{ $post->url }}">{{ $post->name }}</a></h4>
                                                        <ul class="list-inline font-12 mb-5">
                                                            <li class="pr-0"><i
                                                                        class="fa fa-calendar mr-5"></i>{{date_format($post->created_at,"d/m/yy")}}
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="mt-10">{{ $post->description }}</p>
                                            {{--                                            <p class="mt-10">{{ $post->created_at }}</p>--}}
                                            <a href="{{ $post->url }}" class="btn-read-more">Xem thêm</a>
                                            <div class="clearfix"></div>
                                        </div>
                                    </article>
                                </div>
                                @if($key > 1 ) @break @endif
                            @endforeach
                        </div>
                    </div>
                </div>
            </section>
        @endif
    @endforeach
@endif
<!-- Divider: Clients -->
<!-- end main-content -->
