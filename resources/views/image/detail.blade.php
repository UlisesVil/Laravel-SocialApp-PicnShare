<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    
    <div class="cardcont">
        @include('includes.message')

        <div class="cardgen cardcontainerInd bxShadow">
            <div class="secc1">
                <img class="h-10 w-10 rounded-full object-cover imgindcard" src="<?php echo e($image->user->profile_photo_url); ?>" alt="<?php echo e(Auth::user()->name); ?>" />
                <div class="text-sm usercardind">
                    <p class="mainText leading-none usercardcont">{{$image->user->name.' '.$image->user->surname}}
                        <span class="mainText leading-none nickname">
                            {{' | @'.$image->user->nick}}
                        </span>
                    </p>
                    <p class="text-white-600 usercardcont">{{\FormatTime::LongTimeFilter($image->created_at)}}</p>
                </div>
            </div>

            <div class="secc2" title="">
                <img src=" {{route('image.file', ['filename' => $image->image_path]) }}" style="width: 100%;" />
            </div>

            <div class="clearfix"></div>

            <div class="secc3" >
                <span class="mainText leading-none nickname">
                    {{'@'.$image->user->nick.' | '.\FormatTime::LongTimeFilter($image->created_at)}}
                </span>
                <div class="heartlike text-white-900">
                    <div class="uploadform counterlikes">
                        {{count($image->likes)}}
                    </div>
                    <!--Comprobar si el usuario le dio like a la imagen-->
                    <?php $user_like = false; ?> 
                        @foreach($image->likes as $like)
                        @if($like->user->id == Auth::user()->id)
                            <?php $user_like = true; ?> 
                        @endif
                    @endforeach

                    @if($user_like)
                        <!--El data-id="{{$image->id}}" sirve para pasar el valor al JavaScript-->
                        <img src="{{asset('img/heartred.png')}}" data-id="{{$image->id}}" class="btn-dislike"/>
                    @else
                        <img src="{{asset('img/heartgray.png')}}" data-id="{{$image->id}}" class="btn-like"/>
                    @endif    
                </div>
            </div>

            <div class="max-w-sm lg:max-w-full lg:flex cardcontainerInd uploadform">
                <div class="flex flex-col justify-between cardbottom uploadform">

                    <div class="mb-8 comentscontent">
                       
                        <div class="text-white-900 font-bold text-xl mb-2 titledescription">{{$image->user->name.' '.$image->user->surname}} dice:</div>
                        <p class="text-white-700 text-base descriptioncard">{{$image->description}}</p>
                    </div>

                    @if(Auth::user() && Auth::user()->id == $image->user->id)
                    <div class="actions uploadform mainText">
                        <a href="{{ route('image.edit',['id' => $image->id]) }}" class="btn btn-warning updateText">Actualizar</a>
                        <!--<a href="{{ route('image.delete', ['id'=> $image->id]) }}" class="btn btn-danger">Borrar</a>-->

                        @include('modal.delete')

                    </div>
                    @endif

                    <div class="clearfix"></div>

                    <div class="commentscard">
                        <h2>Agrega un Comentario</h2>
                        <hr/>

                        <form method="POST" action="{{ route('comment.save') }}">
                            @csrf

                            <input type="hidden" name="image_id" value="{{$image->id}}" required/>
                            <p class="ptextarea">
                                <textarea class="form-control b {{$errors->has('content') ? 'is-invalid' : ''}}" name="content" required></textarea>

                                @if($errors->has('content'))
                                    <span class="warn-red" role='alert'>
                                        <strong>{{$errors->first('content')}}</strong>
                                    </span>
                                @endif
                            </p>
                            <button type="submit" class="btn-comments">
                                Enviar                                
                            </button>
                        </form>    
                    </div>

                    
                    <h3 class="mainText">Comentarios ( {{count($image->comments)}} )</h3>
                        
                        <hr>
                        <div class="commentbox uploadform"></div>
                        @foreach($image->comments as $comment)
                            <div class="commentind uploadform ">
                                <span class="mainText leading-none nickname uploadform">
                                    {{'@'.$comment->user->nick.' | '.\FormatTime::LongTimeFilter($comment->created_at)}}
                                </span>
                                <p class="uploadform commentp">{{$comment->content}}</p>
                            </div>

                            @if(Auth::check() && ($comment->user_id == Auth::user()->id || $comment->image->user_id == Auth::user()->id))
                            <a class="deletecomment" href="{{ route('comment.delete', ['id' => $comment->id])}}">
                                    Eliminar
                                </a>
                            @endif
                                <hr>
                        @endforeach
                </div>
            </div>
        </div> 
    </div>
 </x-app-layout>
