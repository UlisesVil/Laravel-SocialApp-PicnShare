<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    
    <div>
        <div class="titlefavs">
            <h1>Mis Favoritas</h1>
        </div>
        
        
        
        @foreach($likes as $like)
            @include('includes.image',['image'=>$like->image])
        @endforeach

    </div>
    
     <!--PAGINACION-->
    <div class="clearfix"></div>
    <div class="paginate">
        {{$likes->links()}}
    </div>
    
    
</x-app-layout>
   