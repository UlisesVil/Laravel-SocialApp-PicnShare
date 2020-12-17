<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use App\Models\User;

class HomeController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
    
    
    public function index($search = null){  //por defecto $search sera null
//Comunmente el metodo index es el que lista
        
        if(!empty($search)){
            $users = User::where('nick','LIKE','%'.$search.'%')
                            ->orWhere('name','LIKE','%'.$search.'%')
                            ->orWhere('surname','LIKE','%'.$search.'%')
                            ->orderBy('id', 'desc')
                            ->paginate(5);
        }else{
            $users = User::orderBy('id', 'desc')->paginate(5);
        }
        return view('user.index',[
            'users' => $users
        ]);
    }
    
    public function profile($id){
        $user = User::find($id);
        
        return view('user.profile', [
            'user' => $user
        ]);
    }
}
