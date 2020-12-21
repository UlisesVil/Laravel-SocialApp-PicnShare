<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    
    <div class="profile-user">
        <div class="container-avatar">
           
            
            @if($user->profile_photo_path)
                           <img class="" src="{{route('user.avatar',['filename'=>$user->profile_photo_path])}}" alt="<?php echo e(Auth::user()->name); ?>" />
                        @else
                            <img class="" src="{{ asset('img/avatar.png') }}" alt="{{ Auth::user()->name }}" />
                        @endif
            
            
            
        </div>
        
        <div class="user-info">
            <h1>{{'@'.$user->nick}}</h1>
            <h2>{{$user->name.' '.$user->surname}}</h2>
            <p>Se unio {{\FormatTime::LongTimeFilter($user->created_at)}}</p>
        </div>
        <div class="clearfix"></div> 
    <br/>    
    <hr>  
    </div>
              
    <div class="clearfix"></div>               
    
    <div>
        @include('includes.message')
        
        @foreach($user->images as $image)

            @include('includes.image',['image'=>$image])

        @endforeach

    </div>
    
    
</x-app-layout> 

