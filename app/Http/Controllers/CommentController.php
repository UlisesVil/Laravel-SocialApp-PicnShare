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
        
        //Validacion
        $validate = $this->validate($request, [
            'image_id' => 'integer|required',
            'content' => 'string|required'
        ]);
        
        //Recoger Datos
        $user = \Auth::user();
        $image_id = $request->input('image_id');
        $content = $request->input('content');
        
        //Nuevo objeto
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
    
    public function delete($id){
        
        //Conseguir datos del usuario logueado
        $user = \Auth::user();
        
        //Objeto  del comentario
        $comment = Comment::find($id);
    
        //Comprobar dueño del comentario o de la publicacion
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
