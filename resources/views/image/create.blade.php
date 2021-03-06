<!--header del index.blade.php-->
<x-app-layout>
    <x-slot name="header" >
        Subir Imagen
    </x-slot>

    <div class="createtitle">
        Upload image
    </div>

    <div class="create-form">

        <form method="POST" action="{{route('image.save')}}" enctype="multipart/form-data" id="uploadForm" class="shadow-md px-8 pb-8 form-general">
            <div id="imagePrev" ></div>
            @csrf
            <div class="form-group row uploadform">
                <div class="mb-4 element uploadform uploadbutton">
                    Choose your Image
                    <span class="image_path">
                        <input type="file" name="image_path" id="image_path" class="fileup" required/>
                    </span>
                    <label for="image_path">
                        <div class="indicador">
                            <span style="color: #22f1f4; background: transparent">
                                Upload Image
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

            <div class="form-group row element">
                <div class="mb-4 uploadform createform">
                    <label class="block text-gray-700 text-sm font-bold mb-2 uploadform describeComment {{$errors->has('content') ? 'is-invalid' : ''}}" for="description">
                        Describe your Image or Comment something:
                    </label>
                    <textarea  id="description" name="description" class="shadow appearance-none border rounded py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline form-control" placeholder="Description" required></textarea>
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
                <input class="button-image-form" type="submit" value="Upload"/>
            </div>
        </form>

    </div>
</x-app-layout>


