<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Berita extends Model
{
    //
    public $table = "berita";
    public $timestamps = false;
    protected $fillable = [
        'judul',
        'foto',
        'keterangan',
        'tanggal'
    ];
}
