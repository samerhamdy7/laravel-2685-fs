<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ReactionResource extends JsonResource
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
            'User ID' => $this->user_id,
            'Post_ID' => $this->post_id,
            'Reaction_Type_id' => $this->reaction_type_id,
        ];
    }
}
