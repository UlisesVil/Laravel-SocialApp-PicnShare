<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Pic n Share</title>

        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ asset('css/app.css') }}">
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">


        @livewireStyles

        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.6.0/dist/alpine.js" defer></script>
        <script src="{{ asset('js/main.js') }}"></script>
        <script type="text/javascript" src="../../resources/js/main.js"></script>
        
        <!--JQuery-->
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
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
        
        
        <script type="application/javascript">
                jQuery('input[type=file]').change(function(){
                 var filename = jQuery(this).val().split('\\').pop();
                 var idname = jQuery(this).attr('id');
                 console.log(jQuery(this));
                 console.log(filename);
                 console.log(idname);
                 jQuery('span.'+idname).next().find('span').html(filename);
                });           
        </script>
        
    </body>
</html>
