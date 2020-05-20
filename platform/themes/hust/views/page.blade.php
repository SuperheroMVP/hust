<section class="breadcrumbs">

{{--                <h2>{{ $page->name}}</h2>--}}
                <img src="{{get_object_image(get_data_tuyensinh("banner")->image)}}" width="100%">
</section>
<div class="container">
    <br>
    {!! Theme::breadcrumb()->render() !!}

    {!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, $page->content, $page) !!}
    <br>
</div>
