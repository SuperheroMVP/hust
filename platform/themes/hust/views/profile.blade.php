<section class="breadcrumbs overlay">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2>{{ $profile->name}}</h2>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <br>
    {!! apply_filters(PAGE_FILTER_FRONT_PROFILE_CONTENT, $profile->content, $profile) !!}
    <br>
</div>

