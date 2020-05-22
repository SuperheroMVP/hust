    @foreach ($menu_nodes as $key => $row)
        <div class="single-widget">
            <a href="{{ $row->url }}" target="{{ $row->target }}">
                @if ($row->icon_font)<i class="{{$row->icon_font}}"></i> @endif
                <h4>{{ $row->title }}</h4>
            </a>
        </div>
    @endforeach
