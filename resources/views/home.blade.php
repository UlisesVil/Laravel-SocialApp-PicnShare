<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    
    <div>
        @include('includes.message')
        
        @foreach($images as $image)

        @include('includes.image',['image'=>$image])

        @endforeach

    </div>
    
    <!--PAGINACION-->
    <div class="clearfix"></div>
    <div class="paginate">
        {{$images->links()}}
    </div>
</x-app-layout>    
    
                
   <!--        <div class="card">
            <div class="card-header">
              
                @if($image->user->profile_photo_url)
                    <div class="mt-2" x-show="! photoPreview">
                        <img class="h-10 w-10 rounded-full object-cover" src="<?php echo e($image->user->profile_photo_url); ?>" alt="<?php echo e(Auth::user()->name); ?>" />
                    </div>
                @endif
            
        
                <div class="card-header">
                    {{$image->user->name.' '.$image->user->surname}}
                </div>
                
                <div>
                    <img src=" {{route('image.file', ['filename' => $image->image_path]) }}" style="width: 600px;" />
                </div>
                
                <div class="card-header">
                    {{$image->description}}
                </div>
            
            </div>
        </div>--> 
    
    
    
    
    
    
    
    
    

<!--<div class="mt-2" x-show="! photoPreview">
    <img class="h-10 w-10 rounded-full object-cover" src="<?php echo e(Auth::user()->profile_photo_url); ?>" alt="<?php echo e(Auth::user()->name); ?>" />
    <img class="h-10 w-10 rounded-full object-cover" src="<?php echo e($image->user->profile_photo_url); ?>" alt="<?php echo e(Auth::user()->name); ?>" />
    {{var_dump($image->user->profile_photo_url)}}
    {{var_dump(Auth::user()->profile_photo_url)}}
</div>-->