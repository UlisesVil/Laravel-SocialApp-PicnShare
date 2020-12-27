<x-app-layout>
    <div class="edittitle">
        Editar Imagen
    </div>
    
    <div class="image-form">
        <form method="POST" action="{{ route('image.update') }}" enctype="multipart/form-data" class="shadow-md px-8 pb-8 form-general">
            @csrf
            <input type="hidden" name="image_id" value="{{$image->id}}" />

            <div class="" title="" style="width: 100%; margin:auto; " >
                <img src=" {{route('image.file', ['filename' => $image->image_path]) }}" style="width: 100%;" />
            </div>

            <div class="form-group row uploadform">
                <div class="mb-4 element uploadform uploadbutton">
                            Selecciona tu Imagen
                    <span class="image_path">
                        <input type="file" name="image_path" id="image_path" class="fileup"/>
                    </span>
                    <label for="image_path">
                        <div class="indicador">
                            <span style="color: #22f1f4; background: transparent">
                                Subir Imagen
                            </span>
                        </div>
                    </label>
                </div>  
                
                <div class="mt-2 element">
                    @if($errors->has('image_path'))
                    <span class="invalid-feedback warn-red">
                        <strong>{{$errors->first('image_path')}}</strong>
                    </span>
                    @endif
                </div>
            </div>

            <div class="form-group row element edittext">
                <div class="mb-4 uploadform ptextarea" >
                    <label class=" ptextarea {{$errors->has('content') ? 'is-invalid' : ''}}" for="description">
                        Describe tu Imagen o Comenta algo:
                    </label>
                    <textarea  id="description" name="description" class="form-control" placeholder="Descripcion" required>{{$image->description}}</textarea>
                </div>

                <div class="mt-2 element warn">
                    @if($errors->has('description'))
                    <span class="invalid-feedback" role='alert'>
                        <strong>{{$errors->first('description')}}</strong>
                    </span>
                    @endif
                </div>
            </div>

            <div class="flex items-center justify-between uploadform">
                <input class="button-image-form" type="submit" value="Actualizar Imagen"/>
            </div>
        </form>
    </div>
</x-app-layout>