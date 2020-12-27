<?php

namespace App\Actions\Jetstream;

use Laravel\Jetstream\Contracts\DeletesUsers;
use App\Models\Comment;
use App\Models\Image;
use App\Models\Like;

class DeleteUser implements DeletesUsers
{
    /**
     * Delete the given user.
     *
     * @param  mixed  $user
     * @return void
     */
    public function delete($user)
    {
        $images = Image::where('user_id',$user->id)->get();
        foreach ($images as $image){
            $likeInd = Like::where('image_id',$image->id)->delete();
            $CommentInd = Comment::where('image_id',$image->id)->delete();
        }
        
        $comment = Comment::where('user_id',$user->id)->delete();
        $image = Image::where('user_id',$user->id)->delete();
        $like = Like::where('user_id',$user->id)->delete();
        
        $user->delete();
    }
}
