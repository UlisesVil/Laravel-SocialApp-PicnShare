<x-app-layout>
    <div>
        <div class="edittitle">
            Imagen de Usuario
        </div>
        
        <div class="imageuser-form">
            <form method="POST" action="{{ route('user.userimage') }}" enctype="multipart/form-data" class="shadow-md px-8 pb-8 form-userimage">
                @csrf
                <input type="hidden" name="image_id" value="" />
                <div class="imgusercontent" title="">
                    @if(Auth::user()->profile_photo_path)
                    <img src="{{route('user.avatar',['filename'=>Auth::user()->profile_photo_path])}}" style="width: 100%; border-radius: 10px;" />
                    <!--src="{{url('/user/avatar/'.Auth::user()->profile_photo_path)}}"-->
                    @endif
                </div>

                <div class="form-group row">
                    <div class="mb-4 element uploadbutton">
                        Selecciona tu Imagen
                        <span class="image_path">
                            <input id="image_path" type="file" name="image_path" class="fileup"/>
                        </span>
                        <label for="image_path">
                            <div class="indicador"><span style="color: #22f1f4; background: transparent">Subir Imagen</span></div>
                        </label>
                    </div>    

                    <div class="mt-2 element warn">
                        @if($errors->has('image_path'))
                        <span class="invalid-feedback" role='alert'>
                            <strong>{{$errors->first('image_path')}}</strong>
                        </span>
                        @endif
                    </div>
                </div>

                <div class="btncontent">
                    <input class="button-image-form btnuserimg" type="submit" value="Guardar Imagen"/>
                    <a class="button-image-form btnuserimg" href="{{ route('profile.show') }}">
                        Regresar a Profile
                    </a>
                </div>
            </form>
        </div>
    </div>
</x-app-layout>