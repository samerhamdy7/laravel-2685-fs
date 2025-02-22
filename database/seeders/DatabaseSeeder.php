<?php

namespace Database\Seeders;

use App\Models\Comment;
use App\Models\Post;
use App\Models\PostStatus;
use App\Models\Reaction;
use App\Models\ReactionType;
use App\Models\Reply;
use App\Models\User;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User

        User::factory()->create([
        'name'=> 'Samer Hamdy',
        'email'=> 'SamerHamdy@gmail.com',
        'mobile'=> '01097929493',
        'roles'=>'admin',
        'password'=>'password',
        ]);

        User::factory(100)->create();
         
        //PostStatues
        $post_status_types = [
            'Published',
            'Pending',
            'Postpond',
            'Private',
            'Cancelled',
            'Rejected'
        ];

        foreach($post_status_types as $type){
            PostStatus::create([
                'type' => $type
            ]);
        }

        //ReactionType
        $reaction_types = [
            'Like',
            'Love',
            'Angry',
            'Care',
            'Laugh',
            'Sad'
        ];

        foreach($reaction_types as $type) {
            ReactionType::create([
                'type' =>$type
            ]);
        }

        //Post
        Post::factory(300)->create();

        //Comments
        Comment::factory(1800)->create();

        //Replyes
        Reply::factory(5000)->create();

        //Reaction 
        $count = 500;
        $i = 1;

        while($i <= $count){
            $user_id = User::inRandomOrder()->first()->id;
            $post_id = Post::inRandomOrder()->first()->id;
            $reaction_type_id = ReactionType::inRandomOrder()->first()->id;

            $found = Reaction::where('user_id' , '=' , $user_id)
            ->where('post_id' , ' =' , $post_id)->count();

            if($found == 0){
                Reaction::create([
                    'user_id' => $user_id,
                    'post_id' => $post_id,
                    'reaction_type_id' => $reaction_type_id,
                ]);

                $i++;
            }
        }
    }
}
