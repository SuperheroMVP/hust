
<div class=" ">
{{--                <h2>{{ __('Tìm kiếm: ') }} "{{ Request::input('q') }}"</h2>--}}
                <img src="{{get_object_image(get_data_tuyensinh("banner")->image)}}" width="100%">

</div>
<section class="section pt-100 pb-50 bg-lightgray">
    <div class="container">
        {!! Theme::breadcrumb()->render() !!}
        <div class="row">
                <div class="page-content blog">
                    @if ($posts->count() > 0)
                        @foreach ($posts as $post)
                            <div class="col-lg-4 col-12" style="float: left; min-height: 450px;">
                                <!-- Single Blog -->
                                <div class="single-blog">
                                    <div class="blog-head overlay">
                                        <div class="date">
                                            <h4><time datetime="">{{ date_from_database($post->created_at, 'M d, Y') }}</time></h4>
                                        </div>
                                        <img class="img-full img-bg" src="{{ get_object_image($post->image, 'medium') }}" style="background-image: url('{{ get_object_image($post->image) }}');" alt="{{ $post->name }}">
                                    </div>
                                    <div class="blog-content">
                                        <h4 class="blog-title"><a href="{{ $post->url }}" title="{{ $post->name }}">
                                                {{ $post->name }}
                                            </a></h4>
                                        <p>{{ $post->description }}</p>
                                        <div class="button">
                                            <a href="{{ $post->url }}" class="btn">Xem thêm<i class="fa fa-angle-double-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single Blog -->
                            </div>
                        @endforeach
                        <div class="page-pagination text-right">
                            {!! $posts->links() !!}
                        </div>
                    @else
                        <div class="justify-content-center">
                            <br>
                            <p>{{ __('Không có kết quả nào!') }}</p>
                            <br>
                        </div>
                    @endif
            </div>
        </div>
    </div>
</section>
