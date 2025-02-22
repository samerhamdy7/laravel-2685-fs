<?php

namespace App\Models;

use App\Models\User;
use App\Models\Comment;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Reply extends Model
{
    /** @use HasFactory<\Database\Factories\ReplyFactory> */
    use HasFactory;

    public function comment() : BelongsTo 
    {
        return $this->belongsTo(Comment::class);
    }

    public function user (): BelongsTo 
    {
        return $this->belongsTo(User::class);
    }
}
