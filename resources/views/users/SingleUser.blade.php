@extends('layouts.index')

@section('page-title', 'SingleUser')

@section('page-name')

    <div class="flex justify-center items-center gap-2">
        @if ($user->img)
            <img src="{{ $user->img }}" alt="User Avatar" class="w-10 h-10 rounded-full">
        @else
            @php
                $name = explode(' ', $user->name);
                $init = strtoupper(substr($name[0], 0, 1));
                if (count($name) > 1) {
                    $init .= strtoupper(substr($name[1], 0, 1));
                }

            @endphp
            <div class="w-10 h-10 rounded-full bg-gray-200 flex items-center justify-center">
                <span class=" text-gray-700 font-semibold">
                    {{ $init }}
                </span>
            </div>
        @endif
        <div>
            {{ $user->name }}
        </div>

    </div>
@endsection


@section('main-content')

    <div class="container mx-auto my-10 p-6 bg-white rounded-lg shadow-md">
        <h1 class="text-4xl font-bold mb-6 text-center bg-gray-800 p-2 rounded-xl text-white">{{ $user->name }}</h1>
        <div class="space-y-4">
            @foreach ($user->posts as $post)
                <div class="p-6 bg-gray-50 rounded-lg shadow-md hover:shadow-lg transition-shadow duration-300 ease-in-out">
                    <span class="text-gray-800 text-end float-right">{{ $post->created_at->format('M d ,Y') }}</span>
                    <h3 class="text-xl font-semibold mb-2">{{ $post->title }}</h3>
                    <p class="text-gray-700">{{ $post->body }}</p>
                    <div class="flex justify-around items-center p-4 border-t ">
                        <a href="{{ route('post', $post->id) }}"
                            class="flex items-center justify-center text-blue-500 transition-all">View Post</a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection





















{{-- 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Single User</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.0.2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 font-sans leading-normal tracking-normal">


    <nav class="bg-white shadow-md">
        <div class="container mx-auto p-4">
            <a href="" class="text-lg font-bold text-blue-500 hover:text-blue-700">Home</a>
        </div>
    </nav>


   

 
    <footer class="bg-white shadow-md mt-10">
        <div class="container mx-auto p-4 text-center">
            <p class="text-gray-600">© 2025 Samer Hamdy. All rights reserved.</p>
        </div>
    </footer>

</body>
</html> --}}
