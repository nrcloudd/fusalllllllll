<?php

namespace App\Http\Controllers\Api;

use App\Models\Lapangan;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\LapanganResource;
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
            'namaLapangan'     => 'required',
            'tipeLapangan'     => 'required',
            'priceSiang'     => 'required',
            'priceMalam'     => 'required',
            'image'     => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        //check if validation fails
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        //upload image
        $image = $request->file('image');
        $image->storeAs('public/posts', $image->hashName());

        //create post
        $lapangan = Lapangan::create([
            'namaLapangan'     => $request->content,
            'tipeLapangan'     => $request->content,
            'priceSiang'     => $request->content,
            'priceMalam'     => $request->content,
            'image'     => $image->hashName(),
        ]);

        //return response
        return new LapanganResource(true, 'Data Post Berhasil Ditambahkan!', $lapangan);
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
        return new LapanganResource(true, 'Data Post Ditemukan!', $lapangan);
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
            'namaLapangan'     => 'required',
            'tipeLapangan'     => 'required',
            'priceSiang'     => 'required',
            'priceMalam'     => 'required',
            'image'     => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
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
            Storage::delete('public/posts/'.$lapangan->image);

            //update post with new image
            $lapangan->update([
                'namaLapangan'     => $request->content,
                'tipeLapangan'     => $request->content,
                'priceSiang'     => $request->content,
                'priceMalam'     => $request->content,
                'image'     => $image->hashName(),
            ]);

        } else {

            //update post without image
            $lapangan->update([
                'namaLapangan'     => $request->content,
                'tipeLapangan'     => $request->content,
                'priceSiang'     => $request->content,
                'priceMalam'     => $request->content,
            ]);
        }

        //return response
        return new LapaanganResource(true, 'Data Post Berhasil Diubah!', $lapangan);
    }
    
    /**
     * destroy
     *
     * @param  mixed $lapangan
     * @return void
     */
    public function destroy(Lapangan $lapangan)
    {
        //delete image
        Storage::delete('public/posts/'.$lapangan->image);

        //delete post
        $lapangan->delete();

        //return response
        return new LapanganResource(true, 'Data Post Berhasil Dihapus!', null);
    }
}