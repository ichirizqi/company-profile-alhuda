<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengajar extends Model
{
    //
    public $table = "pengajar";
    public $timestamps = false;
    protected $fillable = [
        'nama',
        'foto',
        'keterangan'
    ];
}
