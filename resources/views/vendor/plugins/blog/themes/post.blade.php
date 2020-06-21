<section class="inner-header divider parallax layer-overlay overlay-dark-5"
         style="background-image: url({{get_object_image(get_data_tuyensinh("banner")->image)}}); background-position: 50% 97px;">
    <div class="container pt-70 pb-20">
        <!-- Section Content -->
        <div class="section-content">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="page-intro__title">{{ $post->name }}</h3>
                    {!! Theme::breadcrumb()->render() !!}
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blogs -->
<section class="blog b-archives single section">
    <div class="container">
        <div class="row">
        @php
            $name = false;
            foreach($post->tags as $tag){
                if ($tag->name == "Đào tạo"){
                    $name = true;
                }
            }
        @endphp
        @php
            foreach($post->categories as $tag){
                if ($tag->danhmuc == "lab"){
                    $name = $tag->danhmuc;
                }
                if ($tag->danhmuc == "btandtt"){
                    $name = $tag->danhmuc;
                }
                if ($tag->danhmuc == "tintuc"){
                    $name = $tag->danhmuc;
                }
            }
        @endphp
        @if($name == 'lab')
            <!-- Start main-content -->
                <div class="main-content">
                    <section>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4">
                                    <p>{{$post->description}}</p>
                                </div>
                                <div class="col-md-8">
                                    <img src="{{ get_object_image($post->image, 'medium') }}" alt="">
                                </div>
                            </div>
                            <div class="row mt-60">
                                <div class="col-md-12">
                                    <blockquote>
                                        <p>{!! $post->content !!}</p>
                                        <footer>Someone famous <i></i>n <cite title="Source Title">Source Title</cite>
                                        </footer>
                                    </blockquote>
                                </div>
                            </div>
{{--                            <div class="row mt-30">--}}
{{--                                <div class="col-md-12">--}}
{{--                                    <h4 class="mb-20">Recent Projects</h4>--}}
{{--                                    <div class="owl-carousel-6col owl-carousel owl-theme owl-loaded">--}}
{{--                                        @foreach (get_post_by_categorys($post->categories, 12) as $related_item)--}}
{{--                                            <div class="item"><img--}}
{{--                                                        src="{{ get_object_image($related_item->image, 'medium') }}"--}}
{{--                                                        alt="">--}}
{{--                                            </div>--}}
{{--                                        @endforeach--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
                        </div>
                    </section>
                </div>
                {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null) !!}
            @elseif($name == 'btandtt')
                <div class="main-content">
                    <section>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4">
                                    <ul>
                                        <li>
                                            <h4>Mô tả:</h4>
                                            <p>{{$post->description}}</p>
                                        </li>
{{--                                        <li>--}}
{{--                                            <h4>Chia sẻ:</h4>--}}
{{--                                            <div class="styled-icons icon-sm icon-gray icon-circled">--}}
{{--                                                <a href="#"><i class="fa fa-facebook"></i></a>--}}
{{--                                                <a href="#"><i class="fa fa-twitter"></i></a>--}}
{{--                                                <a href="#"><i class="fa fa-instagram"></i></a>--}}
{{--                                                <a href="#"><i class="fa fa-google-plus"></i></a>--}}
{{--                                            </div>--}}
{{--                                        </li>--}}

                                    </ul>
                                </div>
                                <div class="col-md-8">
                                    <img src="{{ get_object_image($post->image, 'medium') }}" alt="">
                                </div>
                            </div>
                            <div class="row mt-60">
                                <div class="col-md-12">
                                    <p>{!! $post->content !!}</p>
                                </div>
                            </div>
{{--                            <div class="row mt-30">--}}
{{--                                <div class="col-md-12">--}}
{{--                                    <h4 class="mb-20">Recent Projects</h4>--}}
{{--                                    <div class="owl-carousel-6col owl-carousel owl-theme owl-loaded">--}}
{{--                                        @foreach (get_post_by_categorys($post->categories, 12) as $related_item)--}}
{{--                                            <div class="item" style="background-image: url('{{ get_object_image($related_item->image, 'medium') }}'); width: 185px; height: 125px;">--}}
{{--                                                <img--}}
{{--                                                        src="{{ get_object_image($related_item->image, 'medium') }}"--}}
{{--                                                        alt="">--}}
{{--                                            </div>--}}
{{--                                        @endforeach--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
                        </div>
                    </section>
                </div>
                {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null) !!}
            @elseif($name == 'tintuc')

            @elseif($name == true)
                <div class="col-lg-3 col-12">
                    <div class="learnedu-sidebar left">
                        <!-- Categories -->
                        <div class="single-widget categories">
                            <h3 class="title">Chương trình đào tạo</h3>
                            <ul>
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
                                                <li>
                                                    <a href="{{ $sub->url }}" target="{{ $sub->target }}">
                                                        {{ $sub->name }}</a> @if(get_menu_con_dao_tao($sub->id)->count() > 0)
                                                        <i class="fa fa-chevron-circle-right dropbtn"
                                                           id="{{ $sub->id }}"></i> @endif </li>
                                                @if(get_menu_con_dao_tao($sub->id)->count() > 0)
                                                    <ul class="dropdown {{ $sub->id }}" style="margin-left: 15px;">
                                                        @foreach(get_menu_con_dao_tao($sub->id) as $child)
                                                            <li>
                                                                <a href="{{ $child->url }}"
                                                                   target="{{ $child->target }}">
                                                                    {{ $child->name }}</a>
                                                                @if(get_menu_con_dao_tao($child->id)->count() > 0) <i
                                                                        class="fa fa-chevron-circle-right dropbtn"
                                                                        id="{{ $child->id }}"></i> @endif
                                                            </li>
                                                            @if(get_menu_con_dao_tao($child->id)->count() > 0)
                                                                <ul class="dropdown  {{ $child->id }}"
                                                                    id="{{ $sub->id }}" style="margin-left: 30px;">
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
            @else
                <div class="col-md-12">
                    <div class="conten">
                        {!! $post->content !!}
                    </div>
                    {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, null) !!}
                </div>
            @endif
        </div>
    </div>
</section>
