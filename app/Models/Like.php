<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Like extends Model
{
    use HasFactory;
    
    //En la plantilla detail.blade.php  y home.blade.php se usa 
    //@if($like->user->id == Auth::user()->id) pero no funcionara 
    //por que se necesita las siguientes lineas de Relacion Many to One 
    //para acceso a la info en la tabla de users
    
    //Relacion Many to One
    public function user(){
        return $this->belongsTo('App\Models\User', 'user_id');
    }
    
        //Relacion Many to One
    public function image(){
        return $this->belongsTo('App\Models\Image', 'image_id');
    }
    
    
}
