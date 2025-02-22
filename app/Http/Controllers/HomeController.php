<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index () {

        $userCount= User::Count();

        $postCount = Post::count();

        $recentPosts = Post::with('user')->latest()->take(5)->get();

        return view('index' , compact('userCount' , 'postCount' , 'recentPosts'));
    }
}
