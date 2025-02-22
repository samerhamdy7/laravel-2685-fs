<?php 
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\{
    CommentController,
    HomeController,
    PostController,
    ReactionTypeController,
    PostStatusController,
    ReactionController,
    ReplyController,
    UserController,

};



Route::get('/users/{id}', [UserController::class, 'show'])->name('user');

Route::get('/posts/{id}' , [PostController::class , 'show'])->name('post');

Route::get('/search' , [UserController::class , 'search'])->name('search');


Route::resources(
    [
        'posts' => PostController::class,
        'comments' => CommentController::class,
        'post-statuses' => PostStatusController::class,
        'reaction-types' => ReactionTypeController::class,
        'reactions' => ReactionController::class,
        'replies' => ReplyController::class,
        'users' => UserController::class,
        '/' =>HomeController::class,
        ]
    );
    
// Route::get('init' , function() {

//     $models = [
//         'User',
//         'PostStatus',
//         'ReactionType',
//         'Post',
//         'Reaction',
//         'Comment',
//         'Reply',
//     ];


//     foreach($models as $model){
//         Artisan::call('make:model' , ['name' => $model , '-a' => true] ,);
        
//             sleep(1);
//     }

//     return 'All Models Created Successfully';
// });