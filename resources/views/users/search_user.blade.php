@extends('layouts.index')

@section('main-content')
    <form action="{{ route('search') }}" method="GET" class="mb-4 flex justify-center items-center">
        <input type="text" name="query" placeholder="Search A User" class="p-2 border rounded">
        <button type="submit" class="p-2 bg-blue-500 text-white rounded">Search</button>
    </form>
    <div class="container">
        <h1 class="text-2xl font-semibold mb-4">Search Results : {{$usersCount}} User(s) Found</h1>

        @if ($users->isEmpty())
            <p>No User Found</p>
        @else
            <div class="gride grid-cols-1 md:grid-cols-2 lg:grid-col-3 gap-4">
                @foreach ($users as $user)
                    <div 
                        class="bg-white rounded-lg shadow-lg p-4 transition-transform tranform hover:scale-102 hover:shadow-2xl mt-4 mx-auto max-w-5xl">
                        <div class="flex items-center">
                            @if ($user->img)
                                <img src="{{ $user->img }}" alt="" class="w-10 h-10 rounded-full">
                            @else
                                @php
                                    $name = explode(' ', $user->name);
                                    $init = strtoupper(substr($name[0], 0, 1));
                                    if (count($name) > 1) {
                                        $init .= strtoupper(substr($name[1], 0, 1));
                                    }
                                @endphp
                                <div class="w-10 h-10 rounded-full bg-gray-200 flex items-center justify-center">
                                    <span class="text-gray-700 font-semibold">
                                        {{ $init }}
                                    </span>
                                </div>
                            @endif
                            <div class="ml-3">
                                <p class="font-semibold text-gray-800">{{ $user->name }}</p>
                                <p class="text-gray-600">{{ $user->email }}</p>
                            </div>
                        </div>
                        <div class="mt-4">
                            <p class="font-semibold text-gray-800">Total Posts : {{ $user->posts_count }}</p>

                        </div>
                        <div class="mt-4">
                            <a href="{{ route('user' , $user->id) }}"
                                class="p-2 bg-blue-500 rounded hover:bg-blue-600 transtion-all">View Profile</a>

                        </div>

                    </div>
                @endforeach

            </div>
        @endif
    </div>
@endsection
