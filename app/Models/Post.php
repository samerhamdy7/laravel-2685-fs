<?php

namespace App\Models;

use App\Models\User;
use App\Models\Comment;
use App\Models\Reaction;
use App\Models\PostStatus;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    /** @use HasFactory<\Database\Factories\PostFactory> */
    use HasFactory;

    public function user() : BelongsTo
    {
        return $this->BelongsTo(User::class);
    }

    public function post_status() : BelongsTo 
    {
        return $this->belongsTo(PostStatus::class);
    }

    public function comments() : HasMany
    {
        return $this->hasMany(Comment::class);
    }

    public function reactions(): HasMany 
    {
        return $this->hasMany(Reaction::class);
    }
}
