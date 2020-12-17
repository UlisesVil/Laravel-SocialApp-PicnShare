<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;
 

class CommentController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
    
    public function save(Request $request){
        //VAlidacion
        $validate = $this->validate($request, [
            'image_id' => 'integer|required',
            'content' => 'string|required'
        ]);
        //Recoger Datos
        $user = \Auth::user();
        $image_id = $request->input('image_id');
        $content = $request->input('content');
        
        //Asigno los valores a mi nuevo objeto a guerdar
        $comment = new Comment();
        $comment->user_id = $user->id;
        $comment->image_id = $image_id;
        $comment->content = $content;
        
        //Guardar en la BD
        $comment->save();
        
        //Redireccion
        return redirect()->route('image.detail',['id' => $image_id])
                         ->with([
                             'message' => 'Has publicado tu comentario Correctamente!!'
                         ]);
        
        
    }
    
    public function delete($id){  //id del comentario que se eliminara
        //Conseguir datos del usuario logueado
        $user = \Auth::user();  //sacamos el objeto completo del usuario que esta logueado
        
        //Conseguir objeto  del comentario
        $comment = Comment::find($id);  //tabla Comment metodo find para consulta
    
        //Comprobar si soy el dueño del comentario o de la publicacion
        if($user && ($comment->user_id == $user->id || $comment->image->user_id == $user->id)){
            $comment->delete();
            
            return redirect()->route('image.detail',['id' => $comment->image->id])
                             ->with([
                                'message' => 'Comentario Eliminado correctamente!!'
                            ]);
        }else{
            return redirect()->route('image.detail',['id' => $comment->image->id])
                             ->with([
                                'message' => 'EL COMENTARIO NO SE HA ELIMINADO!!'
                            ]);
        }
    }
    
}
