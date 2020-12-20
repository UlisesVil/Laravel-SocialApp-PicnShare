<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Models\Image;
use App\Models\User;
/*
Route::get('/', function () {
    //El codigo \DB::table('frutas')->get(); se reduce a Image::all();
    
    $images = Image::all(); //con esto estoy sacando todas las imagenes que tengo en la tabla de la DB
    foreach($images as $image){
        echo $image->image_path."<br/>";
        echo $image->description."<br/>";
        echo $image->user->name.' '.$image->user->surname."<br/>"; //aqui ya esta haciendo INNER JOIN
        
        if(count($image->comments) >=1){
            echo '<br/><strong>Comentarios</strong><br/>';
            foreach($image->comments as $comment){
                echo $comment->user->name.' '.$comment->user->surname.':';
                echo $comment->content."<br/>";
            }
        }
        echo 'LIKES: '.count($image->likes);
        echo "<hr/>";
    }
    die();
    
    return view('welcome');
});
*/

//Funcion para hacer storage link en servidor
/*
Route::get('storage-link', function(){
        if(file_exists(public_path('storage'))){
                return 'The "public/storage" directory already exists';
        }
        
        app('files')->link(
                storage_path('app/public'), public_path('storage')
        );
        
        return 'The [public/storage] directory has been linked';
});
*/
Route::middleware(['auth:sanctum', 'verified'])->get('/', function () {
    $images = Image::orderBy('id', 'desc')->paginate(5);
    
   return view('home',[
      'images' => $images
    ]);
})->name('home.redirect');


Route::get('/home', function () {
    
    $images = Image::orderBy('id', 'desc')->paginate(5);
   
   return view('home',[
      'images' => $images
    ]);
})->name('home.redirect');
    

//Route::get('/nuevaRuta','App\Http\Controllers\LikeController@MetodoControlador')->name('NombreRuta');
//el nombre de la ruta es la que llamamos con {{route()}}

//USUARIO
Route::get('/perfil/{id}','App\Http\Controllers\HomeController@profile')->name('profile');
Route::get('/gente/{search?}','App\Http\Controllers\HomeController@index')->name('user.index');
//{search?} con el signo ? quiere decir que es opcional
Route::get('/imageuser', 'App\Http\Controllers\ImageController@imguser')->name('image.userimage');
Route::post('/imguser/update', 'App\Http\Controllers\ImageController@updateuserimg')->name('user.userimage');
Route::get('/user/avatar/{filename}', 'App\Http\Controllers\ImageController@getUserImage')->name('user.avatar');
Route::get('/profileview', 'App\Http\Controllers\ImageController@profileview')->name('profile.update-profile-information-form');

//IMAGE
Route::get('/subir-imagen','App\Http\Controllers\ImageController@create')->name('image.create');
Route::post('/imagen/save','App\Http\Controllers\ImageController@save')->name('image.save');
Route::get('/image/file/{filename}','App\Http\Controllers\ImageController@getImage')->name('image.file');
Route::get('/imagen/{id}','App\Http\Controllers\ImageController@detail')->name('image.detail');
Route::get('/image/delete/{id}','App\Http\Controllers\ImageController@delete')->name('image.delete');
Route::get('/image/editar/{id}','App\Http\Controllers\ImageController@edit')->name('image.edit');
Route::post('/image/update','App\Http\Controllers\ImageController@update')->name('image.update');


//COMMENT
Route::post('/comment/save','App\Http\Controllers\CommentController@save')->name('comment.save');
Route::get('/comment/delete/{id}','App\Http\Controllers\CommentController@delete')->name('comment.delete');

//LIKE
Route::get('/like/{image_id}','App\Http\Controllers\LikeController@like')->name('like.save');
Route::get('/dislike/{image_id}','App\Http\Controllers\LikeController@dislike')->name('like.delete');
Route::get('/likes','App\Http\Controllers\LikeController@index')->name('likes');

