<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Prestasi;
use Yajra\DataTables\DataTables;
use Illuminate\Database\QueryException;
use DB;

class UserPrestasiController extends Controller
{
    //
    protected $status = null;
    protected $error = null;
    protected $data = null;

    public function index()
    {
        //
        try {
            $post = DB::table('prestasi');
            $prestasi = $post->get();
            $this->data = $prestasi;
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
