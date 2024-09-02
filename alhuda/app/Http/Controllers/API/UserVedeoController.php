<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Vedeo;
use Yajra\DataTables\DataTables;
use Illuminate\Database\QueryException;

class UserVedeoController extends Controller
{
    //

    protected $status = null;
    protected $error = null;
    protected $data = null;

    public function index()
    {
        //
        try {
            $vedeo = Vedeo::get();
            $this->data = $vedeo;
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
