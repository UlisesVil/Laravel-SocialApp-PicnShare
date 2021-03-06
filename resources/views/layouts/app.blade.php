<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link rel="icon" type="image/x-icon" href="https://www.freepnglogos.com/uploads/camera-logo-png/camera-icons-vector-backgrounds-11.png">

        <title>Pic n Share</title>

        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

        <link rel="stylesheet" href="{{ asset('css/app.css') }}">
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">
        <link rel="stylesheet" href="{{ asset('css/header.css') }}">
        <link rel="stylesheet" href="{{ asset('css/forms.css') }}">
        <link rel="stylesheet" href="{{ asset('css/comments-section.css') }}">
        <link rel="stylesheet" href="{{ asset('css/cards.css') }}">
        <link rel="stylesheet" href="{{ asset('css/buttons.css') }}">
        <link rel="stylesheet" href="{{ asset('css/likes.css') }}">
        <link rel="stylesheet" href="{{ asset('css/description-card.css') }}">
        <link rel="stylesheet" href="{{ asset('css/profile-image-header.css') }}">
        <link rel="stylesheet" href="{{ asset('css/detail-card.css') }}">
        <link rel="stylesheet" href="{{ asset('css/pagination.css') }}">

        @livewireStyles

        <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.6.0/dist/alpine.js" defer></script>
        <script src="{{ asset('js/main.js') }}"></script>
        <script type="text/javascript" src="../../resources/js/main.js"></script>
        <script src="https://kit.fontawesome.com/94235d9528.js" crossorigin="anonymous"></script>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    </head>

    <body class="font-sans bg-black">
        <div class="login-nav">
            @livewire('navigation-dropdown')

            <!-- Page Heading -->
            <header class="bg-black shadow">
            </header>

            <!-- Page Content -->
            <main>
                {{ $slot }}
            </main>
        </div>

        @stack('modals')
        @livewireScripts
    </body>
</html>
