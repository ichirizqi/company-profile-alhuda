<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Berita;
use Yajra\DataTables\DataTables;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Validator;
use DB;
use Carbon\Carbon;

class AdminBeritaController extends Controller
{
    //
    protected $status = null;
    protected $error = null;
    protected $data = null;

    public function index()
    {
        //
        try {
            $berita = Berita::get();
            $this->data = $berita;
            $this->status = "success";
        } catch (QueryException $e) {
            $this->status = "failed";
            $this->error = $e;
        }
        return response()->json([
            "status" => DataTables::of($this->data)->make(true),
            "data" => $this->data,
            "error" => $this->error
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $data = $request->all();

        $validator = Validator::make($data, [
            'judul' => 'required',
            'keterangan' => 'required',
            'foto' => 'required|mimes:j pg,png,jpeg|max:2048',
        ]);

        if ($validator->fails()) {
            return response(
                [
                    'status' => "failed",
                    'data' => ["message" => "data salah"],
                    'error' => $validator->errors(),
                ]
            );
        }
        $date = Carbon::now()->toDateString();
        $document = new Berita();
        $document->judul = $request->judul;
        $document->keterangan = $request->keterangan;
        $document->tanggal = $date;
        if ($request->foto && $request->foto->isValid()) {
            $file_name = $request->foto->getClientOriginalName();
            $request->foto->move(public_path('berita'), $file_name);
            $path = $file_name;
            $document->foto = $path;
        }

        try {
            $document->save();
            $this->data = $document;
            $this->status = "success";
        } catch (QueryException $e) {
            $this->status = "failed";
            $this->error = $e;
        }
        return response()->json([
            "status" => $this->status,
            "data" => $this->data,
            "error" => $this->error
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        try {
            if ($id) {
                $berita = Berita::where('id', $id)->first();
            } else {
                $berita = Berita::get();
            }
            $this->data = $berita;
            $this->status = "success";
        } catch (QueryException $e) {
            $this->status = "failed";
            $this->error = $e;
        }
        return response()->json([
            "status" => $this->status,
            "data" => $this->data,
            "error" => $this->error
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $validator = Validator::make($request->all(), [
            'judul' => 'required',
            'keterangan' => 'required',
            'foto' => 'required|mimes:jpg,png,jpeg|max:2048',
        ]);
        if ($validator->fails()) {
            $error = $validator->errors()->all()[0];
            return response()->json([
                'status' => 'failed',
                'message' => $error,
                'data' => []
            ]);
        }
        $date = Carbon::now()->toDateString();
        $berita = Berita::find($id);
        $berita->judul = $request->judul;
        $berita->keterangan = $request->keterangan;
        $berita->tanggal = $date;
        if ($request->foto && $request->foto->isValid()) {
            $file_name = $request->foto->getClientOriginalName();
            $request->foto->move(public_path('berita'), $file_name);
            $path = $file_name;
            $berita->foto = $path;
        }
        $berita->update();
        return response()->json([
            'status' => 'success',
            'data' => $berita,
            'messagge' => 'data berhasil di update'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $berita = Berita::where('id', $id);
        $berita->delete();

        return response(
            [
                'status' => "success",
                'data' => ["message" => "data berhasil di hapus"],
                'erorr' => ''
            ]
        );
    }
}
