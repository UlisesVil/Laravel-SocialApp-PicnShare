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