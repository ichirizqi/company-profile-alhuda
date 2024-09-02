<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Hubungi;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Validator;

class UserHubungiController extends Controller
{
    //
    protected $status = null;
    protected $error = null;
    protected $data = null;
    public function store(Request $request)
    {
        //
        $data = $request->all();

        $validator = Validator::make($data, [
            'email' => 'required',
            'pesan' => 'required',
            'nama' => 'required',
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

        $document = new Hubungi();
        $document->email = $request->email;
        $document->pesan = $request->pesan;
        $document->nama = $request->nama;

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
}
