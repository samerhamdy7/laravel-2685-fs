@extends('layouts.index')

@section('page-title', 'SinglePost')

@section('page-name')

    <div class="flex justify-center items-center gap-2">
        @if ($post->user->img)
            <img src="{{ $post->user->img }}" alt="User Avatar" class="w-10 h-10 rounded-full">
        @else
            @php
                $name = explode(' ', $post->user->name);
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
            {{ $post->user->name }}
        </div>

    </div>

@endsection

@section('main-content')

    <div
        class="max-w-2xl mx-auto mt-10 bg-white rounded-lg shadow-lg overflow-hidden transform transition-all hover:shadow-2xl">
        <div class="p-4">
            <span class="font-semibold text-gray-800 text-end float-right">
                {{ $post->created_at->format('M d , Y') }}
            </span>
            <h1 class="font-semibold text-gray-800">{{ $post->title }}</h1>
            <p class="mt-2 text-gray-600">{{ $post->body }}</p>
        </div>

        <div class="flex flex-col p-4 border-t border-gray-200">
            <h3 class="font-semibold text-gray-800 block">Comments :</h3>
            @foreach ($post->comments as $comment)
                @php
                    $commentName = explode(' ', $comment->user->name);
                    $commentInit = strtoupper(substr($commentName[0], 0, 1));
                    if (count($commentName) > 1) {
                        $commentInit .= strtoupper(substr($commentName[1], 0, 1));
                    }
                @endphp

                <div class="bg-gray-300 rounded-lg p-2 mt-2 transform transition-transform duration-300 hover:scale-105">
                    <p class="text-gray-700 text-sm text-end float-right">{{ $comment->created_at->format('M d ,  Y') }}</p>
                    <div class="flex items-center">
                        <div class="relative">
                            <div
                                class="w-10 h-10 rounded-full bg-gray-200 flex items-center justify-center absolute top-0 left-0 hover:bg-black transform transition-transform duration-200">
                                <a href="{{route('user' , $comment->user->id)}}" class="text-gray-700 font-semibold hover:text-white">{{ $commentInit }}</a>
                            </div>
                            <a href="{{route('user' , $comment->user->id)}}" class="ml-12 mt-0.5 font-semibold text-gray-800 hover:text-black duration-300">{{ $comment->user->name }}</a>
                        </div>
                    </div>
                    <p class="mt-2text-gray-600 ml-12">{{ $comment->comment }}</p>

                    @foreach ($comment->replies as $reply)
                        @php
                            $replyName = explode(' ', $reply->user->name);
                            $replyInit = strtoupper(substr($replyName[0], 0, 1));
                            if (count($replyName) > 1) {
                                $replyInit .= strtoupper(substr($replyName[1], 0, 1));
                            }
                        @endphp
                        <div class="bg-gray-200 rounded-lg p-2 mt-2 ml-4">
                            <p class="text-gray-700 text-sm text-end float-right">
                                {{ $reply->created_at->format('M d , Y') }}</p>
                            <div class="flex items-center relative">
                                <div
                                    class="w-10 h-10 rounded-full bg-gray-300 flex items-center justify-center absolute top-0 left-0 hover:bg-black">
                                    <a href="{{route('user' , $reply->user->id)}}" class="text-gray-700 font-semibold hover:text-white">{{ $replyInit }}</a>
                                </div>
                                <a href="{{route('user' , $reply->user->id)}}" class="ml-12 mt-0.5 font-semibold text-gray-800">{{ $reply->user->name }}</a>
                            </div>
                            <p class="mt-6 text-gray-600">{{ $reply->reply }}</p>
                        </div>
                    @endforeach
                </div>
            @endforeach
        </div>

        <div class="flex items-center p-4 border-t border-gray-200">
            <img src="" alt="">
            <div class="ml-3">
                <a href="{{ route('user', $post->user->id) }}"
                    class="font-semibold text-gray-800 flex items-center hover:text-blue-500 transition-all">{{ $post->user->name }}</a>
            </div>

        </div>

    </div>
@endsection
