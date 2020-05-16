<section class="breadcrumbs overlay">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2>{{ $page->name}}</h2>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <br>
    {!! Theme::breadcrumb()->render() !!}

    {!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, $page->content, $page) !!}
    <br>
</div>
