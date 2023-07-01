@extends('layouts.app')

<div class="body">

    @include('partials.header')

    <div role="main" class="main">

        <!-- Homepage Components-->
        @if ($page->name === 'Αρχική')
            @include('partials.hero-section')
            @include('partials.services-carousel')
            {!!$page->body!!}
        @endif


        <!-- Services Components-->
        @if ($page->name === 'Υπηρεσίες')
            @include('partials.breadcrumb')
            @include('partials.services')
            {!!$page->body!!}
        @endif


        <!-- About Components-->
        @if ($page->name === 'Σχετικά με εμάς')
            @include('partials.breadcrumb')
            {!!$page->body!!}
        @endif


        <!-- Clients Components-->
        @if ($page->name === 'Οι συνεργάτες μας')
            @include('partials.breadcrumb')
            {!!$page->body!!}
        @endif


        <!-- Contact Components-->
        @if ($page->name === 'Επικοινωνία')
            @include('partials.breadcrumb')
            {!!$page->body!!}
        @endif


    </div>

</div>

@include('partials.footer')

</div>
