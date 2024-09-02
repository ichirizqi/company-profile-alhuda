<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Alumni extends Model
{
    //

    public $table = "alumni";
    public $timestamps = false;
    protected $fillable = [
        'nama',
        'foto',
        'prestasi',
        'judul',
        'testimoni'
    ];
}
