@extends('layouts.index')

@section('page-title' , 'posts')

@section('page-name' , ' All Posts ' . $postsCount)

{{-- loop of posts --}}
@section('main-content')

<div class="border max-w-2xl mx-auto mt-10">

    @foreach($posts as $post)
    
    <div class="bg-white rounded-lg shadow-lg overflow-hidden transform transition-all hover:scale-105 hover:shadow-2xl mb-6">
        
        <div class="p-4">
            <p class="font-semibold text-gray-800">{{$post->title}}</p>
            <p class="mt-2 text-gray-600">{{$post->body}}</p>
        </div>
        
        <div class="flex items-center p-4 border-t border-gray-200">
            <img src="" alt="">
        <div class="ml-3">
            <p class="text-gray-800">Post By : <span class="text-black font-semibold">{{$post->user->name}}</span></p>
            <p><span class="font-gray-800">Post Is : </span> <span class="text-black font-semibold">{{$post->post_status->type}}</span></p>
        </div>
    </div>
    
    <div class="flex justify-around p-4 border-t border-gray-200">
        <a href="{{route('post' , $post->id)}}" class="flex items-center text-gray-600 hover:text-blue-500 transition-all">View Post</a>
        <a href="{{route('user' , $post->user->id)}}" class="flex items-center text-gray-600 hover:text-blue-500 transition-all">View {{$post->user->name}} Page</a>
    </div>
    
</div>



@endforeach
</div>
@endsection