<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    use HasFactory;
    
    protected $table = 'images'; //se le indica que tabla que modificara
    
    //Relacion One to Many / de uno a muchos
    public function comments(){
        return $this->hasMany('App\Models\Comment')->orderBy('id', 'desc'); 
    // Con $this->hasMany('App\Comment') se indica que en comments tenemos una 
    // relacion con images y lo hace disponible en el objeto
    }
    
    //Relacion One to Many
    public function likes(){
        return $this->hasMany('App\Models\Like'); 
    // Con $this->hasMany('App\Comment') se indica que en comments tenemos una 
    // relacion con images y lo hace disponible en el objeto
    }
    
    //Relacion Many to One
    public function user(){
        return $this->belongsTo('App\Models\User', 'user_id');
    }
}
