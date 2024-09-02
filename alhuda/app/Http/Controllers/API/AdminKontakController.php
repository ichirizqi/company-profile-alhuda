<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Kontak;
use Illuminate\Support\Facades\Validator;
use Yajra\DataTables\DataTables;

class AdminKontakController extends Controller
{
    //
    protected $status = null;
    protected $error = null;
    protected $data = null;

    public function index()
    {
        //
        try {
            $kontak = Kontak::get();
            $this->data = $kontak;
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

    public function update(Request $request, $id)
    {

        $validator = Validator::make($request->all(), [
            // 'keterangan' => 'required',
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
        $kontak = Kontak::find($id);
        $kontak->keterangan = $request->keterangan;
        $kontak->nama = $request->nama;
        if ($request->foto && $request->foto->isValid()) {
            $file_name = $request->foto->getClientOriginalName();
            $request->foto->move(public_path('foto'), $file_name);
            $path = $file_name;
            $kontak->foto = $path;
        }
        try {
            $kontak->save();
            $this->data = $kontak;
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
        return response()->json([
            'status' => 'success',
            'data' => $kontak,
            'messagge' => 'data berhasil di update'
        ]);
    }
}
