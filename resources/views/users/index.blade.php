@extends('layouts.index')

@section('page-title', 'User')

@section('page-name', 'All Users ' . $usersCount)

{{-- loop of all users --}}
@section('main-content')

    <form action="{{ route('search') }}" method="GET" class="mb-4 flex justify-center items-center gap-1">
        <input type="text" name="query" placeholder="Search A User" class="p-2 border rounded">
        <button type="submit" class="p-2 bg-blue-500 text-white rounded">Search</button>
    </form>

<div class="overflow-hidden">
    @if ($users->isEmpty())
    <p>No User Found </p>
    @else
        @foreach ($users as $user)
            <div
            class="max-w-2xl mx-auto mt-10 bg-white rounded-lg shadow-lg overflow-hidden tranform transition-transform hover:scale-105 hover:shadow-2xl">
            <div class="flex items-center p-4">
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

                        <div class="w-10 h-10 rounded-full bg-gray-200 flex justify-center items-center">
                            <span class="text-gray-700 font-semibold">
                                {{ $init }}
                            </span>
                        </div>
                    @endif
                    <div class="flex justify-center items-center w-full ml-3 gap-2">
                        <div>
                            <p class="font-semibold text-gray-800">{{ $user->name }}</p>
                        </div>
                        <div>
                            <p class="font-semibold"><span class="text-black">Total Posts :</span> {{ $user->posts_count }}
                            </p>
                        </div>
                        
                    </div>
                    <div class="flex justify-around p-4 border-t border-gray-200">
                        <a href="{{ route('user', $user->id) }}"
                            class="flex items-center text-gray-600 hover:text-blue-500 transition-all">View Profile</a>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    @endif
    @endsection
