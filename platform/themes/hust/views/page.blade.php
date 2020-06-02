<div class="">
                <img src="{{get_object_image(get_data_tuyensinh("banner")->image)}}" width="100%">
</div>
<div class="container">
    <br>
    {!! Theme::breadcrumb()->render() !!}
    <br>
    {!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, $page->content, $page) !!}
    <br>
</div>
