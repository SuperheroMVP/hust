<section class="main-box">
    <section class="breadcrumbs ">

                    @php
                        $urli = NULL;
                            foreach (request()->segments() as $segment){
                                $urli = $urli."/".$segment;
                            }
                    @endphp
{{--                    @if($urli == "/profile/all")--}}
{{--                        <h2>Cán bộ</h2>--}}
{{--                    @else--}}
{{--                        <h2>{{ $category->name}}</h2>--}}
{{--                    @endif--}}
{{--                    {{dd(get_object_image(get_data_tuyensinh("banner")->image)) }}--}}
                    <img src="{{get_object_image(get_data_tuyensinh("banner")->image)}}" width="100%">
    </section>
    <div class="container">
        <!-- Blogs -->
        <section class="blog b-archives section">
            {!! Theme::breadcrumb()->render() !!}
            <div class="container">
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
                                            <li><a href="{{ $posti->url }}"><i
                                                        class="fa fa-angle-right"></i>{{ $posti->name }}</a></li>
                                        @endforeach
                                    @endforeach
                                </ul>
                            </div>
                            <!--/ End Categories -->
                            <!-- Posts -->
                            <div class="single-widget posts">
                                <h3>Bài viết <span>gần đây</span></h3>
                                @foreach(get_post_new() as $newpost)
                                    @php
                                        $slug = get_slug_newpost($newpost->id);
                                    @endphp
                                    <div class="single-post">
                                        <div class="post-img">
                                            <img src="{{ get_object_image($newpost->image) }}" alt="">
                                        </div>
                                        <div class="post-info">
                                            <h4><a href="{{ asset($slug->key) }}">{{$newpost->name}}</a></h4>
                                            <span><i class="fa fa-calendar"></i>{{$newpost->created_at}}</span>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                            <!--/ End Posts -->
                        </div>
                    </div>
                    <div class="col-lg-8 col-12">
                        @if($urli == "/profile/all")
                            <div class="row">
                                @php
                                    $profiles = get_all_profile();
                                @endphp
                                @if ($profile->count() > 0)
                                    @foreach ($profiles as $profile)
                                        @php
                                            $slug = get_slug_profile($profile->id);
                                        @endphp
                                        <div class="col-lg-6 col-12">
                                            <!-- Single Blog -->
                                            <div class="single-blog">
                                                <div class="blog-head overlay">
                                                    <div class="date">
                                                        <h4>
                                                            <time
                                                                datetime="">{{ date_from_database($profile->created_at, 'M d, Y') }}</time>
                                                        </h4>
                                                    </div>
                                                    <img class="img-full img-bg"
                                                         src="{{ get_object_image($profile->image, 'medium') }}"
                                                         style="background-image: url('{{ get_object_image($profile->image) }}');"
                                                         alt="{{ $profile->name }}">
                                                </div>
                                                <div class="blog-content">
                                                    <h4 class="blog-title"><a href="{{ asset($slug->key) }}"
                                                                              title="{{ $profile->name }}">
                                                            {{ $profile->name }}
                                                        </a></h4>
                                                    <p>{{ $profile->description }}</p>
                                                    <div class="button">
                                                        <a href="{{ asset($slug->key) }}" class="btn">Xem thêm<i
                                                                class="fa fa-angle-double-right"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- End Single Blog -->
                                        </div>
                                    @endforeach
                                @else
                                    <div>
                                        <p>{{ __('There is no data to display!') }}</p>
                                    </div>
                                @endif
{{--                                @if ($profile->count() > 0)--}}
{{--                                    <nav class="pagination-wrap">--}}
{{--                                        {!! $profile->links() !!}--}}
{{--                                    </nav>--}}
{{--                                @endif--}}
                            </div>
                        @else
                            <div class="row">
                                @if ($posts->count() > 0)
                                    @foreach ($posts as $post)
                                        <div class="col-lg-6 col-12">
                                            <!-- Single Blog -->
                                            <div class="single-blog">
                                                <div class="blog-head overlay">
                                                    <div class="date">
                                                        <h4>
                                                            <time
                                                                datetime="">{{ date_from_database($post->created_at, 'M d, Y') }}</time>
                                                        </h4>
                                                    </div>
                                                    <img class="img-full img-bg"
                                                         src="{{ get_object_image($post->image, 'medium') }}"
                                                         style="background-image: url('{{ get_object_image($post->image) }}');"
                                                         alt="{{ $post->name }}">
                                                </div>
                                                <div class="blog-content">
                                                    <h4 class="blog-title"><a href="{{ $post->url }}"
                                                                              title="{{ $post->name }}">
                                                            {{ $post->name }}
                                                        </a></h4>
                                                    <p>{{ $post->description }}</p>
                                                    <div class="button">
                                                        <a href="{{ $post->url }}" class="btn">Xem thêm<i
                                                                class="fa fa-angle-double-right"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- End Single Blog -->
                                        </div>
                                    @endforeach
                                @else
                                    <div>
                                        <p>{{ __('Không tìm thấy bài viết nào!') }}</p>
                                    </div>
                                @endif
                                @if ($posts->count() > 0)
                                    <nav class="pagination-wrap">
                                        {!! $posts->links() !!}
                                    </nav>
                                @endif
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </section>
    </div>
</section>

