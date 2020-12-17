<div class="max-w-sm lg:max-w-full lg:flex cardcontainer">

                <div class="flex items-center bg-black pt-4 cardtop">
                    <img class="h-10 w-10 rounded-full object-cover" src="<?php echo e($image->user->profile_photo_url); ?>" alt="<?php echo e(Auth::user()->name); ?>" />
                    <div class="text-sm usercard">
                        <a class="usercardcont mainText" href="{{route('profile',['id'=>$image->user->id])}}">
                            <p class="mainText leading-none usercardcont">{{$image->user->name.' '.$image->user->surname}}
                            <span class="mainText leading-none nickname">
                                {{' | @'.$image->user->nick}}
                            </span>
                            </p>
                        </a>
                        <p class="text-gray-600 usercardcont">{{\FormatTime::LongTimeFilter($image->created_at)}}</p>
                    </div>
                </div>

                <div class="h-48 lg:h-auto lg:w-48 flex-none bg-cover rounded-t lg:rounded-t-none lg:rounded-l text-center overflow-hidden mainimage" title="">
                    <img src=" {{route('image.file', ['filename' => $image->image_path]) }}" style="width: 100%;" />
                </div>
    
                <div class="bg-black cardtop cardheart " >
                    <span class="mainText leading-none nickname">
                        {{'@ '.$image->user->nick.' | '.\FormatTime::LongTimeFilter($image->created_at)}}
                    </span>
                    <div class="heartlike">
                        <div class="counterlikes mainText">
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

                <div class="bg-black rounded-b lg:rounded-b-none lg:rounded-r p-4 flex flex-col justify-between leading-normal cardbottom">

                    <div class="mb-8 comentscontent">
                       
                        <div class="font-bold text-xl mb-2 titledescription">{{$image->user->name.' '.$image->user->surname}} dice:</div>
                        <p class="text-base descriptioncard">{{$image->description}}</p>
                    </div>
                    <div class="btncard">
                    <a href="{{ route('image.detail', ['id' => $image->id]) }}" class="btn btn-warning btn-comments">
                        Comentarios ( {{count($image->comments)}} )
                    </a>
                    </div>    
                </div>
            </div>