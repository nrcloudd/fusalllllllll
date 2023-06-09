<?php

namespace App\Http\Controllers\Api;

use App\Models\Post;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\PostResource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class LapanganController extends Controller
{
    /**
     * index
     *
     * @return void
     */
    public function index()
    {
        //get posts
        $lapangans = Lapangan::latest()->paginate(5);

        //return collection of posts as a resource
        return new PostResource(true, 'List Data Posts', $lapangans);
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
            'namaField' => 'required',
            'tipeField' => 'required',
            'priceSiang' => 'required',
            'priceMalam' => 'required',
            'gambar' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        //check if validation fails
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //upload image
        $image = $request->file('gambar');
        $image->storeAs('public/posts', $image->hashName());

        //create post
        $lapangan = Lapangan::create([
            'manaField' => $request->content,
            'tipeField' => $request->content,
            'priceSiang' => $request->content,
            'priceMalam' => $request->content,
            'gambar' => $image->hashName(),
        ]);

        //return response
        return new PostResource(true, 'Data Post Berhasil Ditambahkan!', $lapangan);
    }

    /**
     * show
     *
     * @param  mixed $lapangan
     * @return void
     */
    public function show(Lapangan $lapangan)
    {
        //return single post as a resource
        return new PostResource(true, 'Data Post Ditemukan!', $lapangan);
    }

    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $lapangan
     * @return void
     */
    public function update(Request $request, Lapangan $lapangan)
    {
        //define validation rules
        $validator = Validator::make($request->all(), [
            'namaField' => 'required',
            'tipeField' => 'required',
            'priceSiang' => 'required',
            'priceMalam' => 'required',
            'gambar' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        //check if validation fails
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //check if image is not empty
        if ($request->hasFile('gambar')) {

            //upload image
            $image = $request->file('gambar');
            $image->storeAs('public/posts', $image->hashName());

            //delete old image
            Storage::delete('public/posts/' . $lapangan->image);

            //update post with new image
            $lapangan->update([
                'namaField' => 'required',
                'tipeField' => 'required',
                'priceSiang' => 'required',
                'priceMalam' => 'required',
                'gambar' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]);

        } else {

            //update post without image
            $lapangan->update([
                'namaField'   => 'required',
            'tipeField'     => 'required',
            'priceSiang'   => 'required',
            'priceMalam'   => 'required',   
            ]);
        }

        //return response
        return new PostResource(true, 'Data Post Berhasil Diubah!', $lapangan);
    }

    /**
     * destroy
     *
     * @param  mixed $post
     * @return void
     */
    public function destroy(Lapangan $lapangan)
    {
        //delete image
        Storage::delete('public/posts/' . $lapangan->image);

        //delete post
        $lapangan->delete();

        //return response
        return new PostResource(true, 'Data Post Berhasil Dihapus!', null);
    }
}