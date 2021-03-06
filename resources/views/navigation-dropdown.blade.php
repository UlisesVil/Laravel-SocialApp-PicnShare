<nav x-data="{ open: false }" class="bg-white border-b border-gray-100">
    <!-- Primary Navigation Menu -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex">
                <!-- Navigation Links -->
                <div class="textlogo">
                    <x-jet-nav-link href="{{ route('home.redirect') }}" :active="request()->routeIs('dashboard')">
                        {{ __('Pic\'n Share') }}
                    </x-jet-nav-link>
                </div>
            </div>

            <!-- Settings Dropdown -->
            <div class="hidden sm:flex sm:items-center sm:ml-6">
                <x-jet-nav-link href="{{ route('home.redirect') }}" style="margin-right: 10px" >Main</x-jet-nav-link>
                <x-jet-nav-link href="{{ route('user.index') }}" style="margin-right: 10px" >Community</x-jet-nav-link>
                <x-jet-nav-link href="{{ route('likes') }}" style="margin-right: 10px" >Favorites</x-jet-nav-link>
                <x-jet-nav-link href="{{ route('image.create') }}">Upload Image</x-jet-nav-link>

                <x-jet-dropdown align="right" width="48">
                    <x-slot name="trigger">
                        <button class="flex text-sm border-2 border-transparent rounded-full focus:outline-none focus:border-gray-300 transition duration-150 ease-in-out">
                            @if(Auth::user()->profile_photo_path)
                                <img class="h-10 w-10 rounded-full" src="{{route('user.avatar',['filename'=>Auth::user()->profile_photo_path])}}" alt="{{ Auth::user()->name }}" />
                            @else
                                <img class="h-10 w-10 rounded-full" src="{{ asset('img/avatar.png') }}" alt="{{ Auth::user()->name }}" />
                            @endif
                        </button>
                    </x-slot>

                    <x-slot name="content">
                        <!-- Account Management -->

                        <div class="block px-4 py-2 text-xs text-white-400 manageA">
                            {{ __('Manage Account') }}
                        </div>

                        <div class="border-t border-gray-100"></div>

                        <x-jet-dropdown-link href="{{ route('profile',['id' => Auth::user()->id]) }}">
                            {{ __('My Posts') }}
                        </x-jet-dropdown-link>

                        <x-jet-dropdown-link href="{{ route('profile.show') }}">
                            {{ __('Profile') }}
                        </x-jet-dropdown-link>

                        @if (Laravel\Jetstream\Jetstream::hasApiFeatures())
                            <x-jet-dropdown-link href="{{ route('api-tokens.index') }}">
                                {{ __('API Tokens') }}
                            </x-jet-dropdown-link>
                        @endif

                        <div class="border-t border-gray-100"></div>

                        <!-- Team Management -->
                        @if (Laravel\Jetstream\Jetstream::hasTeamFeatures())
                            <div class="block px-4 py-2 text-xs text-gray-400">
                                {{ __('Manage Team') }}
                            </div>

                            <!-- Team Settings -->
                            <x-jet-dropdown-link href="{{ route('teams.show', Auth::user()->currentTeam->id) }}">
                                {{ __('Team Settings') }}
                            </x-jet-dropdown-link>

                            @can('create', Laravel\Jetstream\Jetstream::newTeamModel())
                                <x-jet-dropdown-link href="{{ route('teams.create') }}">
                                    {{ __('Create New Team') }}
                                </x-jet-dropdown-link>
                            @endcan

                            <div class="border-t border-gray-100"></div>

                            <!-- Team Switcher -->
                            <div class="block px-4 py-2 text-xs text-gray-400">
                                {{ __('Switch Teams') }}
                            </div>

                            @foreach (Auth::user()->allTeams() as $team)
                                <x-jet-switchable-team :team="$team" />
                            @endforeach

                            <div class="border-t border-gray-100"></div>
                        @endif

                        <!-- Authentication -->
                        <form method="POST" action="{{ route('logout') }}">
                            @csrf
                            <x-jet-dropdown-link href="{{ route('logout') }}"
                                                onclick="event.preventDefault();
                                                this.closest('form').submit();">
                                {{ __('Logout') }}
                            </x-jet-dropdown-link>
                        </form>
                    </x-slot>
                </x-jet-dropdown>
            </div>

            <!-- Hamburger -->
            <div class="-mr-2 flex items-center sm:hidden">
                <button @click="open = ! open" class="inline-flex items-center justify-center p-2 rounded-md text-black-400 hover:text-black-500 hover:bg-gray-500 focus:outline-none focus:bg-black-800 focus:text-black-500 transition duration-150 ease-in-out">
                    <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                        <path :class="{'hidden': open, 'inline-flex': ! open }" class="inline-flex" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        <path :class="{'hidden': ! open, 'inline-flex': open }" class="hidden" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Responsive Navigation Menu -->
    <div :class="{'block': open, 'hidden': ! open}" class="hidden sm:hidden">
        <div class="pt-2 pb-3 space-y-1">
            <x-jet-responsive-nav-link href="{{ route('home.redirect') }}" :active="request()->routeIs('home.redirect')">
                {{ __('Main') }}
            </x-jet-responsive-nav-link>
        </div>

        <!-- Responsive Settings Options -->
        <div class="pt-4 pb-1 border-t border-gray-200">
            <div class="flex items-center px-4">
                <div class="flex-shrink-0">
                    @if(Auth::user()->profile_photo_path)
                        <img class="h-10 w-10 rounded-full" src="{{route('user.avatar',['filename'=>Auth::user()->profile_photo_path])}}" alt="{{ Auth::user()->name }}" />
                    @else
                        <img class="h-10 w-10 rounded-full" src="{{ asset('img/avatar.png') }}" alt="{{ Auth::user()->name }}" />
                    @endif
                </div>
                <div class="ml-3">
                    <div class="font-medium text-base text-white-800">{{ Auth::user()->name }}</div>
                    <div class="font-medium text-sm text-white-500">{{ Auth::user()->email }}</div>
                </div>
            </div>

            <div class="mt-3 space-y-1">
                <!-- Account Management -->
                <x-jet-responsive-nav-link href="{{ route('profile.show') }}" :active="request()->routeIs('profile.show')">
                    {{ __('Profile') }}
                </x-jet-responsive-nav-link>
                <x-jet-responsive-nav-link href="{{ route('user.index') }}" :active="request()->routeIs('profile.show')">
                    {{ __('Community') }}
                </x-jet-responsive-nav-link>
                <x-jet-responsive-nav-link href="{{ route('likes') }}" :active="request()->routeIs('profile.show')">
                    {{ __('Favorites') }}
                </x-jet-responsive-nav-link>
                <x-jet-responsive-nav-link href="{{ route('profile',['id' => Auth::user()->id]) }}" :active="request()->routeIs('profile.show')">
                    {{ __('My Posts') }}
                </x-jet-responsive-nav-link>
                <x-jet-responsive-nav-link href="{{ route('image.create') }}" :active="request()->routeIs('profile.show')">
                    {{ __('Upload Image') }}
                </x-jet-responsive-nav-link>

                @if (Laravel\Jetstream\Jetstream::hasApiFeatures())
                    <x-jet-responsive-nav-link href="{{ route('api-tokens.index') }}" :active="request()->routeIs('api-tokens.index')">
                        {{ __('API Tokens') }}
                    </x-jet-responsive-nav-link>
                @endif

                <!-- Authentication -->
                <form method="POST" action="{{ route('logout') }}">
                    @csrf
                    <x-jet-responsive-nav-link href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                    this.closest('form').submit();">
                        {{ __('Logout') }}
                    </x-jet-responsive-nav-link>
                </form>

                <!-- Team Management -->
                @if (Laravel\Jetstream\Jetstream::hasTeamFeatures())
                    <div class="border-t border-gray-200"></div>

                    <div class="block px-4 py-2 text-xs text-gray-400">
                        {{ __('Manage Team') }}
                    </div>

                    <!-- Team Settings -->
                    <x-jet-responsive-nav-link href="{{ route('teams.show', Auth::user()->currentTeam->id) }}" :active="request()->routeIs('teams.show')">
                        {{ __('Team Settings') }}
                    </x-jet-responsive-nav-link>

                    <x-jet-responsive-nav-link href="{{ route('teams.create') }}" :active="request()->routeIs('teams.create')">
                        {{ __('Create New Team') }}
                    </x-jet-responsive-nav-link>

                    <div class="border-t border-gray-200"></div>

                    <!-- Team Switcher -->
                    <div class="block px-4 py-2 text-xs text-gray-400">
                        {{ __('Switch Teams') }}
                    </div>

                    @foreach (Auth::user()->allTeams() as $team)
                        <x-jet-switchable-team :team="$team" component="jet-responsive-nav-link" />
                    @endforeach
                @endif
            </div>
        </div>
    </div>
</nav>
