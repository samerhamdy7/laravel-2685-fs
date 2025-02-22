<?php

namespace App\Http\Controllers;

use App\Models\PostStatus;
use App\Http\Requests\StorePostStatusRequest;
use App\Http\Requests\UpdatePostStatusRequest;
use App\Http\Resources\PostStatusResource;

class PostStatusController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $all_post_status = PostStatus::get();

        return PostStatusResource::collection($all_post_status);
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
    public function store(StorePostStatusRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        //this with $id var
        $single = PostStatus::where('id' , $id)->first();

        //this with the original way by default just ll write this commend
        return PostStatusResource::make($single);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(PostStatus $postStatus)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdatePostStatusRequest $request, PostStatus $postStatus)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(PostStatus $postStatus)
    {
        //
    }
}
