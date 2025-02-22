@extends('layouts.index')

@section('page-name', 'Home Page')

@section('main-content')

    <div class="container mx-auto mt-10">
        <div class="bg-white p-6 rounded-lg shadow-lg text-center mb-1">
            <h2 class="text-2xl font-bold">Total Users</h2>
            <p class="text-3xl mt-2">{{ $userCount }}</p>
        </div>

        <div class="bg-white p-6 rounded-lg shadow-lg text-center">
            <h2 class="text-2xl font-bold">Total Posts</h2>
            <p class="text-3xl mt-2">{{ $postCount }}</p>
        </div>
    </div>

    <div class="bg-whit p-6 rounded-lg shadow-lg">
        <h2 class="text-2xl font-bold mb-4">Recent Posts</h2>
        @foreach ($recentPosts as $post)
            <div class="mb-6 p-4 border-b">
                <h3 class="text-xl font-semibold text-gray-800 ">{{ $post->title }}</h3>
                <p class="text-gray-600 mt-2">{{ $post->body }}</p>
                <div class="flex justify-between items-center mt-4">
                    <a href="{{ route('user', $post->user->id) }}" class="text-sm text-black mt-2 font-semibold ">Posted
                        By: <span class="text-gray-800 hover:text-black">{{ $post->user->name }}</span></a>
                    <div>
                        <a href="{{ route('post', $post->id) }}"
                            class="text-blue-500 hover:text-blue-700 mt-2 inline-block">View Post</a>
                    </div>

                </div>
                <div class="text-sm text-gray-500">
                    {{ $post->created_at->format('M d , Y') }}

                </div>
            </div>
        @endforeach

    </div>

@endsection
