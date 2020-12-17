<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    
    <div class="profile-user">
        <div class="container-avatar">
            <img class="" src="<?php echo e($user->profile_photo_url); ?>" alt="<?php echo e(Auth::user()->name); ?>" />
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

