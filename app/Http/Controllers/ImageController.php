<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use App\Models\Image;
use App\Models\Comment;
use App\Models\Like;

class ImageController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
    
    public function create(){
        return view('image.create');
    }
    
    public function save(Request $request){
        //Validacion
        $validate=$this->validate($request,[
            'description' => 'required',
            'image_path' => 'required|image'
        ]);
        
        //Recoger Datos
        $image_path = $request->file('image_path');
        $description = $request->input('description');
        
        //Asignar valores nuevo objeto
        //para esto se carga al inicio el modelo con use App\Models\Image;
        $user = \Auth::user();
        //var_dump($user);
        $image = new Image();
        $image->user_id = $user->id;
        $image->description = $description;
        //var_dump($user->id);
        
        //Subir fichero
        if($image_path){
            //para usar el Storage indicamos al inicio la
            //ruta use Illuminate\Support\Facades\Storage;
            //y la ruta use Illuminate\Support\Facades\File;
            $image_path_name = time().$image_path->getClientOriginalName();
            Storage::disk('images')->put($image_path_name, File::get($image_path));
            $image->image_path = $image_path_name;
        }
        
        $image->save();   //esto me guarda en la base de datos mi 
                          //objeto creado sin tener mi metodo en el modelo
                          //y sin hacer un INSERT
        return redirect()->route('home.redirect')->with([
            'message'=>'La foto ha sido subida correctamente!!'
        ]);
    }
    
    
    public function getImage($filename){
        //agregamos el use Illuminate\Http\Response; al principio del archivo
        //y creamos su ruta en archivo routes/web 
        $file = Storage::disk('images')->get($filename);
        return new Response($file, 200);
    }
    
    public function detail($id){
        $image = Image::find($id); //consulta a la tabla de BD
        
        return view('image.detail', [
            'image'=> $image
        ]);
    }
    
    public function delete($id){
        //Cargamos los modelos de Comments y Likes ya que necesitamos borrar 
        //todos los registros asociados a la imagen que queremos borrar y por 
        //la integridad referencial no podremos hacerlo si no los borramos tambien
        $user = \Auth::user();
        $image = Image::find($id);
        $comments = Comment::where('image_id', $id)->get();
        $likes = Like::where('image_id', $id)->get();
        
        if($user && $image->user->id == $user->id){
            //Eliminar comentarios
            if($comments && count($comments) >=1){
                foreach($comments as $comment){
                    $comment->delete();
                }
            }
                        
            //Eliminar los Likes
            if($likes && count($likes) >=1){
                foreach($likes as $like){
                    $like->delete();
                }
            }
            //Eliminar ficheros de imagen
            //revisar si se tiene use Illuminate\Support\Facades\Storage; cargado
            //de lo contrario hay que cargarlo
            Storage::disk('images')->delete($image->image_path);//Borra el archivo
                        
            //Eliminar registro de la imagen
            $image->delete(); //borra el objeto $image
            $message = array('message' => 'La imagen se ha borrado correctamente');
        }else{
            $message = array('message' => 'La imagen No se ha borrado correctamente');
        }
        
        return redirect()->route('home.redirect')->with($message);
        
    }
    
    public function edit($id){
        $user= \Auth::user();
        $image = Image::find($id);
        
        if($user && $image && $image->user->id == $user->id){
            return view('image.edit',[
                    'image'=>$image
                    ]);
        }else{
            return redirect()->route('home.redirect');
        }
    }
    
    public function update(Request $request){
        
         //Validacion
        $validate=$this->validate($request,[
            'description' => 'required',
            'image_path' => 'image'
        ]);
        
        //Recoger los datos
        $image_id = $request->input('image_id');
        $image_path = $request->file('image_path');
        $description = $request->input('description');
        
        //Conseguir Objeto image
        $image = Image::find($image_id);
        $image->description = $description;
        
        
        //Subir fichero
        if($image_path){
            //para usar el Storage indicamos al inicio la
            //ruta use Illuminate\Support\Facades\Storage;
            //y la ruta use Illuminate\Support\Facades\File;
            $image_path_name = time().$image_path->getClientOriginalName();
            Storage::disk('images')->put($image_path_name, File::get($image_path));
            $image->image_path = $image_path_name;
        }
        
        //Actualizar registro
        $image->update();
        
        return redirect()->route('image.detail', ['id' => $image_id])
                         ->with(['message' => 'Imagen actualizada con exito']);
       
    }
}