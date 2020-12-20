<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    
    <div class="busqueda">
        <div class="titleg">
            <h1>Gente</h1>
        </div>  
        <div class="formsrch">
            <form id="buscador" method="GET" action="{{ route('user.index') }}">  
                <!--se usa Javascript (archivo main.js) para enviar el dato por la url-->
                <input type="text" id="search" class="form-control"/>
<!--                le quitamos el name="search" para que no aparezca este parametro en la url-->
                <input type="submit" value="Buscar" class="bg-transparent border font-bold px-4 rounded-full vpbtn buttonsrch">
            </form>
        </div>
        <div class="clearfix"></div> 
        <hr>
    </div>
   
    @foreach($users as $user)

            <div class="profile-user">
                <div class="container-avatar">
                    <img class="" src="{{url('/user/avatar/'.$user->profile_photo_path)}}" alt="{{$user->name}}" title="{{'@'.$user->nick}}" />
                  
                   
                   
                </div>

                <div class="user-info">
                    <h1>{{'@'.$user->nick}}</h1>
                    <h2>{{$user->name.' '.$user->surname}}</h2>
                    <p>Se unio {{\FormatTime::LongTimeFilter($user->created_at)}}</p>
                    
                </div>
                <div class="btncont">
                        <a href=" {{ route('profile', ['id' => $user->id]) }}" 
                           class="bg-transparent border font-bold py-2 px-4 rounded-full vpbtn">
                            Ver Prefil
                        </a>
                    </div>
                <div class="clearfix"></div> 
                <br/>    
                <hr>  
            </div>

        @endforeach
    
    <!--PAGINACION-->
    <div class="clearfix"></div>
    <div class="paginate">
        {{$users->links()}}
    </div>
</x-app-layout>    