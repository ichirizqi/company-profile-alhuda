<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Prestasi extends Model
{
    //
    public $table = "prestasi";
    public $timestamps = false;
    protected $fillable = [
        'nama',
        'lomba',
        'peringkat',
        'tingkat',
        'tahun',
    ];
}
