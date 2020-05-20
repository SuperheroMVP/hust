<section class="breadcrumbs">

{{--                <h2>{{ $post->name}}</h2>--}}
                <img src="{{get_object_image(get_data_tuyensinh("banner")->image)}}" width="100%">

</section>
<!-- Blogs -->
<section class="blog b-archives single section">
    <div class="container">
        {!! Theme::breadcrumb()->render() !!}
        <div class="row">
            <div class="col-lg-4 col-12">
                <div class="learnedu-sidebar left">
                    @if (is_plugin_active('blog'))
                        <div class="search">
                            <div class="form">
                                <form class="quick-search" action="{{ route('public.search') }}">
                                    <input type="text" name="q" placeholder="{{ __('Tìm kiếm...') }}"
                                           class="form-control search-input" autocomplete="off">
                                </form>
                                <button class="button"><i class="fa fa-search"></i></button>
                                <div class="search-result"></div>
                            </div>
                        </div>
                @endif
                <!-- Categories -->
                    <div class="single-widget categories">
                        <h3 class="title">Danh sách bộ môn</h3>
                        <ul>
                            @foreach (get_all_categories(['categories.status' => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED, 'categories.parent_id' => 0, 'categories_check' => 'so_do_to_chuc']) as $category)
                                @php
                                    $allRelatedCategoryIds = array_unique(array_merge(app(\Botble\Blog\Repositories\Interfaces\CategoryInterface::class)->getAllRelatedChildrenIds($category), [$category->id]));

                                    $postk = app(\Botble\Blog\Repositories\Interfaces\PostInterface::class)->getByCategory($allRelatedCategoryIds, 0, $loop->index % 2 == 0 ? 6 : 5);
                                @endphp
                                @foreach($postk as $posti)
                                    <li><a href="{{ $posti->url }}"><i class="fa fa-angle-right"></i>{{ $posti->name }}
                                        </a></li>
                                @endforeach
                            @endforeach
                        </ul>
                    </div>
                    <!--/ End Categories -->
                    <!-- Posts -->
                    <div class="single-widget posts">
                        <h3>Bài viết <span>gần đây</span></h3>
                        @foreach (get_related_posts($post->slug, 2) as $related_item)
                            <div class="single-post">
                                <div class="post-img">
                                    <a href="{{ $related_item->url }}">
                                        <img src="{{ get_object_image($related_item->image) }}"
                                             alt="{{ $related_item->name }}">
                                    </a>
                                </div>
                                <div class="post-info">
                                    <h4><a href="{{ $related_item->url }}"> {{ $related_item->name }}</a></h4>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <!--/ End Posts -->
                </div>
            </div>
            @php
                $profiles = get_profile_where_cate($post->id);
            @endphp
            @if(count($profiles) >0)
                <div class="col-lg-8 col-12">
                    `<ul class="nav mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Giới thiệu chung</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Danh sách cán bộ đương nhiệm</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                            <div class="subject-title">
                                Thông tin chung
                            </div>
                            <div class="subject-content">
                                {!! $post->content !!}
                                <br/>
                                {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null) !!}
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <div class="subject-title">
                                Danh sách cán bộ
                            </div>
                            <div class="list-officials team-style2">
                                <div class="row">
                                    @foreach($profiles as $profile)
                                    <div class="col-md-4 single-team">
                                        <div class="image">
                                            <img src="{{ get_object_image($profile->image) }}" alt="#">
                                            <a href="#" data-fancybox="photo"><i class="fa fa-search"></i></a>
                                        </div>
                                        <!--team-content -->
                                        <div class="team-content">
                                            <h4 class="name">{{$profile->name}}</h4>
                                            <h2 class="postion">{{$profile->chucvu}}</h2>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @else
                <div class="col-lg-8 col-12">
                    <div class="blog-detail">
                        {!! $post->content !!}
                        <br/>
                        {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null) !!}
                    </div>
                </div>
            @endif
        </div>
    </div>
</section>
