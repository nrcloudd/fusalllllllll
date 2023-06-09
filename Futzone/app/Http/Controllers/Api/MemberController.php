<?php

namespace App\Http\Controllers\Api;

use App\Models\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class MemberController extends Controller
{    
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        //get posts
        $members = Member::latest()->paginate(5);

        //return collection of posts as a resource
        return new PostResource(true, 'List Data Posts', $members);
    }
    
    /**
     * store
     *
     * @param  mixed $request
     * @return void
     */
    public function store(Request $request)
    {
        //define validation rules
        $validator = Validator::make($request->all(), [
            'image'     => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'namaMember'   => 'required',
            'emailMember'     => 'required',
            'passMember'   => 'required',
            'noTelp'   => 'required',
        ]);

        //check if validation fails
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //upload image
        $image = $request->file('image');
        $image->storeAs('public/posts', $image->hashName());

        //create post
        $member = Member::create([
            'namaMember'   => $request->content,
            'emailMember'     => $request->content,
            'passMember'   => $request->content,
            'noTelp'   => $request->content,
            'image'     => $image->content,
        ]);

        //return response
        return new PostResource(true, 'Data Post Berhasil Ditambahkan!', $member);
    }
        
    /**
     * show
     *
     * @param  mixed $post
     * @return void
     */
    public function show(Member $member)
    {
        //return single post as a resource
        return new PostResource(true, 'Data Post Ditemukan!', $member);
    }
    
    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $member
     * @return void
     */
    public function update(Request $request, Member $member)
    {
        //define validation rules
        $validator = Validator::make($request->all(), [
            'image'     => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'title'     => 'required',
            'content'   => 'required',
        ]);

        //check if validation fails
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //check if image is not empty
        if ($request->hasFile('image')) {

            //upload image
            $image = $request->file('image');
            $image->storeAs('public/posts', $image->hashName());

            //delete old image
            Storage::delete('public/posts/'.$member->image);

            //update post with new image
            $member->update([
                'image'     => $image->hashName(),
                'title'     => $request->title,
                'content'   => $request->content,
            ]);

        } else {

            //update post without image
            $member->update([
                'title'     => $request->title,
                'content'   => $request->content,
            ]);
        }

        //return response
        return new PostResource(true, 'Data Post Berhasil Diubah!', $member);
    }
    
    /**
     * destroy
     *
     * @param  mixed $member
     * @return void
     */
    public function destroy(Post $member)
    {
        //delete image
        Storage::delete('public/posts/'.$member->image);

        //delete post
        $member->delete();

        //return response
        return new PostResource(true, 'Data Post Berhasil Dihapus!', null);
    }
}