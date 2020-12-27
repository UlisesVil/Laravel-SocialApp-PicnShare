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


Route::middleware(['auth:sanctum', 'verified'])->get('/', function () {
    $images = Image::orderBy('id', 'desc')->paginate(5);
    return view('home',[
      'images' => $images
    ]);
})->name('home.redirect');

Route::middleware(['auth:sanctum', 'verified'])->get('/home', function () {
    $images = Image::orderBy('id', 'desc')->paginate(5);
    return view('home',[
      'images' => $images
    ]);
})->name('home.redirect');
    

//USUARIO
Route::get('/perfil/{id}','App\Http\Controllers\HomeController@profile')->name('profile');
Route::get('/gente/{search?}','App\Http\Controllers\HomeController@index')->name('user.index');
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

