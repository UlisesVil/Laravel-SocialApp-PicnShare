<div class="login-nav">
            @if (Route::has('login'))
                <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block  bg-black-900 login-nav">
                    @auth
                        <a href="{{ url('/dashboard') }}" class="text-sm text-gray-700 underline test">Dashboard</a>
                    @else
                    <a href="{{ route('login') }}" class="ml-4 text-sm text-gray-700 test">Pic n Share</a>
      
                    <a href="{{ route('login') }}" class="text-sm text-gray-700 underline test ml-4">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="ml-4 text-sm text-red-700 underline test">Register</a>
                        @endif
                    @endif
                    
                </div>
            @endif
</div>

<x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <!--<x-jet-authentication-card-logo />-->
            <img src="{{asset('img/camlogo.png')}}" style="width: 500px"/>
        </x-slot>

        <x-jet-validation-errors class="mb-4" />
        
        @if (session('status'))
            <div class="mb-4 font-medium text-sm text-green-600">
                {{ session('status') }}
            </div>
        @endif
        
        <form method="POST" action="{{ route('login') }}">
            @csrf

            <div>
                <x-jet-label value="{{ __('Email') }}" />
                <x-jet-input class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            </div>

            <div class="mt-4">
                <x-jet-label value="{{ __('Password') }}" />
                <x-jet-input class="block mt-1 w-full" type="password" name="password" required autocomplete="current-password" />
            </div>

            <div class="block mt-4">
                <label class="flex items-center">
                    <input type="checkbox" class="form-checkbox" name="remember">
                    <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                @if (Route::has('password.request'))
                    <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('password.request') }}">
                        {{ __('Forgot your password?') }}
                    </a>
                @endif

                <x-jet-button class="ml-4" style="padding: 10px; background: black;">
                    {{ __('Login') }}
                </x-jet-button>
                <a href="{{ route('register') }}" >
                    <div style="padding: 10px; background: black;" class="inline-flex items-center px-4 py-2 bg-gray-800 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:shadow-outline-gray disabled:opacity-25 transition ease-in-out duration-150 ml-4">
                        {{ __('Register') }}
                    </div>
                </a>
            </div>
        </form>
    </x-jet-authentication-card>
</x-guest-layout>
