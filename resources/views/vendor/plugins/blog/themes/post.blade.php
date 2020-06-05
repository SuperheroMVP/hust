<div>
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
                            <h3 class="title">Chương trình đào tạo</h3>
                            <ul>
                                @foreach(get_menu_dao_tao('daotao') as $daotao)
                                    @if(get_menu_con_dao_tao($daotao->id))
                                        <style>
                                            #menu-dt li i{
                                                margin-top: 5px;
                                                float: right;
                                            }
                                            #menu-dt .dropdown{
                                                display: none;
                                            }
                                            #menu-dt .show {display: block;}
                                        </style>
                                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                                        <script>
                                            jQuery(document).ready(function() {
                                                jQuery('.dropbtn').click(function(event) {
                                                    var id= event.target.id;
                                                    jQuery(`.${id}`).toggleClass('show');
                                                });
                                            });
                                        </script>
                                        <ul id="menu-dt">
                                            @foreach(get_menu_con_dao_tao($daotao->id) as $sub)
                                                <li>
                                                    <a href="{{ $sub->url }}" target="{{ $sub->target }}">
                                                        {{ $sub->name }}</a> @if(get_menu_con_dao_tao($sub->id)->count() > 0) <i class="fa fa-chevron-circle-right dropbtn" id="{{ $sub->id }}"></i> @endif </li>
                                                @if(get_menu_con_dao_tao($sub->id)->count() > 0)
                                                    <ul class="dropdown {{ $sub->id }}" style="margin-left: 15px;">
                                                        @foreach(get_menu_con_dao_tao($sub->id) as $child)
                                                            <li>
                                                                <a href="{{ $child->url }}"
                                                                   target="{{ $child->target }}">
                                                                    {{ $child->name }}</a>
                                                                @if(get_menu_con_dao_tao($child->id)->count() > 0) <i class="fa fa-chevron-circle-right dropbtn" id="{{ $child->id }}"></i> @endif
                                                            </li>
                                                            @if(get_menu_con_dao_tao($child->id)->count() > 0)
                                                                <ul class="dropdown  {{ $child->id }}" id="{{ $sub->id }}" style="margin-left: 30px;">
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
                            </ul>
                        </div>
                    </div>
                </div>
            @else
            <div class="col-lg-3 col-12">
                <div class="learnedu-sidebar left">
                    @php
                        $profiles = get_profile_where_cate($post->categories);
                    @endphp
                    @if(count($profiles) >0)
                        <div class="single-widget categories">
                            <h3 class="title">Cán bộ giảng viên</h3>
                            <ul>
                                @foreach($profiles as $profile)
                                    @php
                                        $slug = get_slug_profile($profile->id);
                                    @endphp
                                    <div class="single-post">
                                        <div class="post-img">
                                            <a href="{{ asset($slug->key) }}">
                                                <img src="{{ get_object_image($profile->image) }}"
                                                     alt="{{ $profile->name }}">
                                            </a>
                                        </div>
                                        <div class="post-info">
                                            <h4><a href="{{ asset($slug->key) }}"> {{ $profile->name }} <br>
                                                    <p>{{ $profile->chucvu }}</p></a></h4>
                                        </div>
                                    </div>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <!-- Posts -->
                    <div class="single-widget posts">
                        <h3>Bài viết liên quan</h3>
                        @foreach (get_post_by_categorys($post->categories, 12) as $related_item)
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
                    <div class="title">
                        <h4>{{$post->name}}</h4>
                        <div style="width: 100px; border-top: 3px solid;"></div>
                        <br>
                    </div>
                    <div class="conten">
                        {!! $post->content !!}
                    </div>
                    <br>
                    <div class="discription">
                        <h6>Đăng bởi: {{get_name_user($post->author_id)}}</h6>
                        <p>{{$post->created_at}}</p>
                    </div>
                    <br/>
                    {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null) !!}
                </div>
            </div>
        </div>
    </div>
</section>
