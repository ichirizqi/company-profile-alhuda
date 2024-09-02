<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengumuman extends Model
{
    //
    public $table = "pengumuman";
    public $timestamps = false;
    protected $fillable = [
        'judul',
        'isi',
        'foto',
        'tanggal',
    ];
}
