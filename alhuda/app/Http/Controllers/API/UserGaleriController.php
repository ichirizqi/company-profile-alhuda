<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Galeri;
use Yajra\DataTables\DataTables;
use Illuminate\Database\QueryException;

class UserGaleriController extends Controller
{
    //
    protected $status = null;
    protected $error = null;
    protected $data = null;

    public function index()
    {
        //
        try {
            $galeri = Galeri::get();
            $this->data = $galeri;
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
