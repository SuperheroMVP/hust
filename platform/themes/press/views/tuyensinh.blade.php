<div class="banner">
    <img src="{{ get_object_image(get_data_tuyensinh("banner")->image )}}">
</div>
<div class="container">
    <ul class="nav tab-admissions" id="pills-tab" role="tablist">
        @foreach(get_data_tuyen_sinh() as  $key => $ts)
            @php if($ts->loai == 'banner'){ continue; } @endphp
        <li role="presentation" @if($key == 0) class="active" @endif><a href="#pills-profile-{{$key}}" aria-controls="home" role="tab" data-toggle="tab">{{$ts->name}}</a></li>
        @endforeach
{{--            <li role="presentation" class=""><a href="#pills-profile" aria-controls="home" role="tab" data-toggle="tab">Hệ thống điện tử thông minh & IOT</a></li>--}}
{{--        <li role="presentation" class=""><a href="#pills-profile-2" aria-controls="home" role="tab" data-toggle="tab"> Hệ thống kỹ thuật điện tử viễn thông</a></li>--}}
{{--        <li role="presentation" class=""><a href="#pills-profile-3" aria-controls="home" role="tab" data-toggle="tab"> Hệ thống kỹ thuật y sinh</a></li>--}}
{{--        <li role="presentation" class=""><a href="#pills-profile-4" aria-controls="home" role="tab" data-toggle="tab"> Hệ thống kỹ thuật điện tử viễn thông tiên tiến</a></li>--}}
    </ul>
    <div class="tab-content content-admissions">
        @foreach(get_data_tuyen_sinh() as  $key => $ts)
            @php if($ts->loai == 'banner'){ continue; } @endphp
            <div  role="tabpanel" class="tab-pane @if($key == 0) active @endif" id="pills-profile-{{$key}}">
                    {!! apply_filters(PAGE_FILTER_FRONT_PROFILE_CONTENT, $ts->content, $ts) !!}
            </div>
          @endforeach
{{--        <div  role="tabpanel" class="tab-pane active" id="home">--}}
{{--            @if( !is_null(get_data_tuyensinh("httm")) )--}}
{{--                {!! apply_filters(PAGE_FILTER_FRONT_PROFILE_CONTENT, get_data_tuyensinh("httm")->content, get_data_tuyensinh("httm")) !!}--}}
{{--            @endif--}}
{{--        </div>--}}
{{--        <div role="tabpanel" class="tab-pane " id="pills-profile">--}}
{{--            @if( ! is_null(get_data_tuyensinh("htdttm")) )--}}
{{--                {!! apply_filters(PAGE_FILTER_FRONT_PROFILE_CONTENT, get_data_tuyensinh("htdttm")->content, get_data_tuyensinh("htdttm")) !!}--}}
{{--            @endif--}}
{{--        </div>--}}
{{--        <div role="tabpanel" class="tab-pane " id="pills-profile-2">--}}
{{--            @if( !is_null(get_data_tuyensinh("htktdtvt")) )--}}
{{--                {!! apply_filters(PAGE_FILTER_FRONT_PROFILE_CONTENT, get_data_tuyensinh("htktdtvt")->content, get_data_tuyensinh("htktdtvt")) !!}--}}
{{--            @endif--}}
{{--        </div>--}}
{{--        <div role="tabpanel" class="tab-pane " id="pills-profile-3">--}}
{{--            @if( !is_null(get_data_tuyensinh("htktys")) )--}}
{{--                {!! apply_filters(PAGE_FILTER_FRONT_PROFILE_CONTENT, get_data_tuyensinh("htktys")->content, get_data_tuyensinh("htktys")) !!}--}}
{{--            @endif--}}
{{--        </div>--}}
{{--        <div role="tabpanel" class="tab-pane " id="pills-profile-4">--}}
{{--            @if( !is_null(get_data_tuyensinh("htktdtvttt")) )--}}
{{--                {!! apply_filters(PAGE_FILTER_FRONT_PROFILE_CONTENT, get_data_tuyensinh("htktdtvttt")->content, get_data_tuyensinh("htktdtvttt")) !!}--}}
{{--            @endif--}}
{{--        </div>--}}
    </div>
</div>
