<?php

namespace App\Http\Controllers\API;


use App\Http\Controllers\Controller;
use App\Kontak;
use Yajra\DataTables\DataTables;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\Validator;
use DB;

class UserKontakController extends Controller
{
    //
    protected $status = null;
    protected $error = null;
    protected $data = null;

    public function index()
    {
        //
        try {
            $kontak = DB::table('kontak')
                ->select(
                    'keterangan',
                    'foto',
                )
                ->get();
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
}
