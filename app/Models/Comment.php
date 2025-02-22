<?php

namespace App\Models;

use App\Models\User;
use App\Models\Reply;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Comment extends Model
{
    /** @use HasFactory<\Database\Factories\CommentFactory> */
    use HasFactory;

    public function replies () :HasMany 
    {
        return $this->hasMany(Reply::class) ;
    } 

    public function post (): BelongsTo
    {
        return $this->belongsTo(Post::class);
    } 

    public function user() : BelongsTo 
    {
        return $this->belongsTo(User::class);
    }
}
