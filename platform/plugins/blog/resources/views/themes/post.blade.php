<div>
    {{--                <h2>{{ $post->name}}</h2>--}}
    <img src="{{get_object_image(get_data_tuyensinh("banner")->image)}}" width="100%">
</div>
<!-- Blogs -->
<section class="blog b-archives single section">
    <div class="container">
        {!! Theme::breadcrumb()->render() !!}
        <div class="row">
            <div class="col-lg-3 col-12">
                <div class="learnedu-sidebar left">
                    @php
                        $profiles = get_profile_where_cate($post->id);
                    @endphp
                    @if(count($profiles) >0)
                        <div class="single-widget categories">
                            <h3 class="title">Cán bộ giảng viên</h3>
                            <ul>
                                @foreach($profiles as $profile)
                                    <div class="single-post">
                                        <div class="post-img">
                                            <a href="{{ $profile->url }}">
                                                <img src="{{ get_object_image($profile->image) }}"
                                                     alt="{{ $profile->name }}">
                                            </a>
                                        </div>
                                        <div class="post-info">
                                            <h4><a href="{{ $profile->url }}"> {{ $profile->name }} <br> <p>{{ $profile->chucvu }}</p> </a></h4>
                                        </div>
                                    </div>
                                @endforeach
                            </ul>
                        </div>
                @else
                    <!-- Categories -->
                        <div class="single-widget categories">
                            <h3 class="title">Bộ môn & trung tâm</h3>
                            <ul>
                                @foreach (get_all_categories(['categories.status' => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED, 'categories.parent_id' => 0, 'categories_check' => 'so_do_to_chuc']) as $category)
                                    @php
                                        $allRelatedCategoryIds = array_unique(array_merge(app(\Botble\Blog\Repositories\Interfaces\CategoryInterface::class)->getAllRelatedChildrenIds($category), [$category->id]));

                                        $postk = app(\Botble\Blog\Repositories\Interfaces\PostInterface::class)->getByCategory($allRelatedCategoryIds, 0, $loop->index % 2 == 0 ? 6 : 5);
                                    @endphp
                                    @foreach($postk as $posti)
                                        <li><a href="{{ $posti->url }}"><i
                                                        class="fa fa-angle-right"></i>{{ $posti->name }}
                                            </a></li>
                                    @endforeach
                                @endforeach
                            </ul>
                        </div>
                        <!--/ End Categories -->
                @endif
                    @foreach($post->tags as $tag)
                        @if($tag->name == 'Trung tâm và bộ môn')
                        <!-- Posts -->
                            
                            <!--/ End Posts -->
                        @else
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
                        @endif
                    @endforeach
                </div>
            </div>
            @php
                $profiles = get_profile_where_cate($post->id);
            @endphp
                <div class="col-lg-9 col-12">
                    <div class="blog-detail">
                        {!! $post->content !!}
                        <br/>
                        {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null) !!}
                    </div>
                </div>
        </div>
    </div>
</section>
