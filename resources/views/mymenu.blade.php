<nav class="collapse">
    <ul class="nav nav-pills" id="mainNav">

@php

    if (Voyager::translatable($items)) {
        $items = $items->load('translations');
    }

@endphp

@foreach ($items as $item)

    @php

        $originalItem = $item;
        if (Voyager::translatable($item)) {
            $item = $item->translate($options->locale);
        }

        $isActive = null;
        $styles = null;
        $icon = null;


    @endphp

    <li class="{{ $isActive }}nav-item">
        <a class="nav-link" href="{{ url($item->link()) }}" target="{{ $item->target }}">
            {!! $icon !!}
            <span>{{ $item->title }}</span>
        </a>
        @if(!$originalItem->children->isEmpty())
            @include('voyager::menu.default', ['items' => $originalItem->children, 'options' => $options])
        @endif
    </li>
@endforeach

</ul>
</nav>