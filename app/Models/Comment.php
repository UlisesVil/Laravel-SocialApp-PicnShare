<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    
    
    //En la plantilla detail.blade.php se usa $comment->user->nick pero no funcionara
    //por que se necesita las siguientes lineas de acceso a la info en la tabla
    //de usuarios
    
    //Relacion Many to One
    public function user(){
        return $this->belongsTo('App\Models\User', 'user_id');
    }
    
        //Relacion Many to One
    public function image(){
        return $this->belongsTo('App\Models\Image', 'image_id');
    }
}
