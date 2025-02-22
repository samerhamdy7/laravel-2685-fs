<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Resources\UserResource;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::WithCount('posts')->get();

        $usersCount = User::count();

        $userResource = UserResource::collection($users);

        return view('users.index' , compact('users' , 'usersCount'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreUserRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
       $user = User::with('posts')->where('id' , $id)->first();

       $user_resorce = UserResource::make($user);

       return view('users.SingleUser' , compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateUserRequest $request, User $user)
    {
        //
    }

    public function search(Request $request) {

        $query = $request->input('query');
        $users = User::where('name' , 'LIKE' , "%$query%")->withCount('posts')->get();
        $usersCount = $users->count();


        return view('users.search_user' , compact('users' , 'usersCount'));

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
        //
    }
}
