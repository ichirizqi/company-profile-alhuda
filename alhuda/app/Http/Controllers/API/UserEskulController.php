<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Eskul;
use Yajra\DataTables\DataTables;
use Illuminate\Database\QueryException;

class UserEskulController extends Controller
{
    protected $status = null;
    protected $error = null;
    protected $data = null;

    public function index()
    {
        //
        try {
            $eskul = Eskul::get();
            $this->data = $eskul;
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
