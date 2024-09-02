<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Pengumuman;
use Yajra\DataTables\DataTables;
use Illuminate\Database\QueryException;

class UserPengumumanController extends Controller
{
    //
    protected $status = null;
    protected $error = null;
    protected $data = null;

    public function index()
    {
        //
        try {
            $pengajar = Pengumuman::get();
            $this->data = $pengajar;
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
