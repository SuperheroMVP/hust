<div>
    {{--                <h2>{{ $post->name}}</h2>--}}
    <img src="{{get_object_image(get_data_tuyensinh("banner")->image)}}" width="100%">
</div>
<!-- Blogs -->
<section class="blog b-archives single section">
    <div class="container">
        {!! Theme::breadcrumb()->render() !!}
        <div class="row">
            @php
                $name = false;
                foreach($post->tags as $tag){
                    if ($tag->name == "Đào tạo"){
                        $name = true;
                    }
                }
            @endphp
            @if($name == true)
                <div class="col-lg-3 col-12">
                    <div class="learnedu-sidebar left">
                    <!-- Categories -->
                        <div class="single-widget categories">
                            <h3 class="title">Danh mục đào tạo</h3>
                            <ul>
                                @foreach(get_menu_dao_tao('daotao') as $daotao)
                                    <li>
                                        <a href="{{ $daotao->url }}" target="{{ $daotao->target }}"> > {{ $daotao->name }}</a></li>
                                    @if(get_menu_con_dao_tao($daotao->id))
                                        <ul style="margin-left: 10px;">
                                        @foreach(get_menu_con_dao_tao($daotao->id) as $sub)
                                            <li>
                                                <a href="{{ $sub->url }}" target="{{ $sub->target }}"> + {{ $sub->name }}</a></li>
                                            @if(get_menu_con_dao_tao($sub->id))
                                                <ul style="margin-left: 20px;">
                                                @foreach(get_menu_con_dao_tao($sub->id) as $child)
                                                    <li>
                                                        <a href="{{ $child->url }}" target="{{ $child->target }}"> + {{ $child->name }}</a>
                                                    </li>
                                                    @endforeach
                                                </ul>
                                            @endif
                                        @endforeach
                                        </ul>
                                    @endif
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            @else
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
                                            <h4><a href="{{ $profile->url }}"> {{ $profile->name }} <br>
                                                    <p>{{ $profile->chucvu }}</p></a></h4>
                                        </div>
                                    </div>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <!-- Posts -->
                    <div class="single-widget posts">
                        <h3>Bài viết <span>liên quan</span></h3>
                        @foreach (get_post_by_categorys($post->categories, 6) as $related_item)
                            <div class="single-post">
                                <div  class="post-img">
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
            @endif
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
