<x-jet-form-section submit="updateProfileInformation">

    <x-slot name="title">
         <div style="color: white; font-weight: bolder">
        {{ __('Profile Information') }}
    </x-slot>

    <x-slot name="description">
        <div style="color: white; font-weight: bolder">
        {{ __('Update your account\'s profile information and email address.') }}
        </div>
    </x-slot>

    <x-slot name="form">

        @if (Laravel\Jetstream\Jetstream::managesProfilePhotos())
            <div x-data="{photoName: null, photoPreview: null}" class="col-span-6 sm:col-span-4">
                <input type="file" class="hidden"
                        wire:model="photo"
                        x-ref="photo"
                        x-on:change="
                                photoName = $refs.photo.files[0].name;
                                const reader = new FileReader();
                                reader.onload = (e) => {
                                    photoPreview = e.target.result;
                                };
                                reader.readAsDataURL($refs.photo.files[0]);"
                />
                <x-jet-label for="photo" value="{{ __('Photo') }}" />
                <!-- Current Profile Photo -->
                @include('includes.avatar')
                <!-- New Profile Photo Preview -->
                <div class="mt-2" x-show="photoPreview">
                    <span class="block rounded-full w-20 h-20"
                          x-bind:style="'background-size: cover; background-repeat: no-repeat; background-position: center center; background-image: url(\'' + photoPreview + '\');'">
                    </span>
                </div>
                <x-jet-secondary-button class="mt-2 mr-2" type="button" x-on:click.prevent="$refs.photo.click()">
                    {{ __('Select A New Photo') }}
                </x-jet-secondary-button>
                @if ($this->user->profile_photo_path)
                    <x-jet-secondary-button type="button" class="mt-2" wire:click="deleteProfilePhoto">
                        {{ __('Remove Photo') }}
                    </x-jet-secondary-button>
                @endif
                <x-jet-input-error for="photo" class="mt-2" />
            </div>
        @endif

        <div class="col-span-6 sm:col-span-4">
            @if(Auth::user()->profile_photo_path)
                <img src="{{route('user.avatar',['filename'=>Auth::user()->profile_photo_path])}}" style="width: 150px; margin-bottom: 20px; border-radius: 10px;" />
            @else
                <img class="rounded-full" src="{{ asset('img/avatar.png') }}" alt="{{ Auth::user()->name }}" style="width: 150px; margin-bottom: 20px; border-radius: 10px;"/>
            @endif
            <a class="vpbtn" href="{{ route('image.userimage') }}">Select a New Photo</a>
        </div>

        <!-- Name -->
        <div class="col-span-6 sm:col-span-4">
            <x-jet-label for="name" value="{{ __('Name') }}" />
            <x-jet-input id="name" type="text" class="mt-1 block w-full" wire:model.defer="state.name" autocomplete="name" />
            <x-jet-input-error for="name" class="mt-2" />
        </div>

        <!-- Surname -->
        <div class="col-span-6 sm:col-span-4">
            <x-jet-label for="surname" value="{{ __('Surname') }}" />
            <x-jet-input id="surname" type="text" class="mt-1 block w-full" wire:model.defer="state.surname" autocomplete="surname" />
            <x-jet-input-error for="surname" class="mt-2" />
        </div>

        <!-- Nick -->
        <div class="col-span-6 sm:col-span-4">
            <x-jet-label for="nick" value="{{ __('Nick') }}" />
            <x-jet-input id="nick" type="text" class="mt-1 block w-full" wire:model.defer="state.nick" autocomplete="nick" />
            <x-jet-input-error for="nick" class="mt-2" />
        </div>

        <!-- Email -->
        <div class="col-span-6 sm:col-span-4">
            <x-jet-label for="email" value="{{ __('Email') }}" />
            <x-jet-input id="email" type="email" class="mt-1 block w-full" wire:model.defer="state.email" />
            <x-jet-input-error for="email" class="mt-2" />
        </div>
    </x-slot>

    <x-slot name="actions">
        <x-jet-action-message class="mr-3" on="saved">
            {{ __('Successfully saved.') }}

        </x-jet-action-message>

        <x-jet-button>
            {{ __('Save') }}
        </x-jet-button>
    </x-slot>
</x-jet-form-section>
