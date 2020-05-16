<ul class="dropdown">
    @foreach ($menu_nodes as $key => $row)
        <li>
            <a href="{{ $row->url }}" target="{{ $row->target }}">
                @if ($row->icon_font)<i class="fa fa-angle-down"></i> @endif{{ $row->title }}
            </a>
        </li>
        @if ($row->has_child)
            {!!
                Menu::generateMenu([
                    'slug' => $menu->slug,
                    'view' => 'child_menu',
                    'options' => ['class' => 'sub-menu'],
                    'parent_id' => $row->id,
                ])
            !!}
        @endif
    @endforeach
</ul>
