<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Visi;
use Yajra\DataTables\DataTables;
use Illuminate\Database\QueryException;

class UserVisiController extends Controller
{
    //
    protected $status = null;
    protected $error = null;
    protected $data = null;

    public function index()
    {
        //
        try {
            $visi = Visi::get();
            $this->data = $visi;
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
