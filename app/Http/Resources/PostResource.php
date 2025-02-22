<?php

namespace App\Http\Resources;

use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PostResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'Post Title' => $this->title,
            'Post Body' => $this->body,
            'User ID' => $this->user_id,
            'status_id' =>$this->post_status_id,
        ];
    }
}
