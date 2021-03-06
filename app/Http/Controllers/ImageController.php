<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use App\Models\Image;
use App\Models\Comment;
use App\Models\Like;
use App\Models\User;

class ImageController extends Controller{

    public function __construct(){
        $this->middleware('auth');
    }
    
    public function create(){
        return view('image.create');
    }
    
    public function save(Request $request){
        
        $validate=$this->validate($request,[
            'description' => 'required',
            'image_path' => 'required|image'
        ]);
        
        $image_path = $request->file('image_path');
        $description = $request->input('description');
        
        $user = \Auth::user();
        
        $image = new Image();
        $image->user_id = $user->id;
        $image->description = $description;
        
        if($image_path){
            $image_path_name = time().$image_path->getClientOriginalName();
            Storage::disk('images')->put($image_path_name, File::get($image_path));
            $image->image_path = $image_path_name;
        }

        $image->save();
        
        return redirect()->route('home.redirect')->with([
            'message'=>'La foto ha sido subida correctamente!!'
        ]);
    }
        
    public function getImage($filename){
        $file = Storage::disk('images')->get($filename);
        return new Response($file, 200);
    }
    
    public function detail($id){
        $image = Image::find($id);
        return view('image.detail', [
            'image'=> $image
        ]);
    }
    
    public function delete($id){
        
        $user = \Auth::user();
        $image = Image::find($id);
        $comments = Comment::where('image_id', $id)->get();
        $likes = Like::where('image_id', $id)->get();
        
        if($user && $image->user->id == $user->id){
            
            if($comments && count($comments) >=1){
                foreach($comments as $comment){
                    $comment->delete();
                }
            }
                        
            if($likes && count($likes) >=1){
                foreach($likes as $like){
                    $like->delete();
                }
            }
            
            Storage::disk('images')->delete($image->image_path);//Borra el archivo
                        
            $image->delete();
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
        
        $validate=$this->validate($request,[
            'description' => 'required',
            'image_path' => 'image'
        ]);
        
        $image_id = $request->input('image_id');
        $image_path = $request->file('image_path');
        $description = $request->input('description');
        
        $image = Image::find($image_id);
        $image->description = $description;
        
        if($image_path){
            $image_path_name = time().$image_path->getClientOriginalName();
            Storage::disk('images')->put($image_path_name, File::get($image_path));
            $image->image_path = $image_path_name;
        }

        $image->update();
        
        return redirect()->route('image.detail', ['id' => $image_id])
                         ->with(['message' => 'Imagen actualizada con exito']);
    }
    
    public function imguser(){
        return view('image.userimage');
    }
    
    public function updateuserimg(Request $request){
        $id = \Auth::user()->id;
        $user = User::find($id);
        $user_profile_photo=$user->profile_photo_path;
        
        $image_path = $request->file('image_path');
        if($image_path){
            $image_path_name = time().$image_path->getClientOriginalName();
            Storage::disk('userimages')->put($image_path_name, File::get($image_path));
            $user->profile_photo_path = $image_path_name;
        }
        
        $user->update();
        return redirect()->route('image.userimage');
    }
    
    public function getUserImage($filename){
        $file = Storage::disk('userimages')->get($filename);
        return new Response($file, 200);
    }
    
    public function profileview(){
        return view('profile.update-profile-information-form');
    }
}