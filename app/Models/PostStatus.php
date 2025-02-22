<?php

namespace App\Models;

use App\Models\Post;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class PostStatus extends Model
{
    /** @use HasFactory<\Database\Factories\PostStatusFactory> */
    use HasFactory;

    public function posts () : HasMany 
    {
        return $this->hasMany(Post::class);
    }
}
