<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Eskul extends Model
{
    //
    public $table = "eskul";
    public $timestamps = false;
    protected $fillable = [
        'nama',
        'foto',
        'keterangan',
        'jadwal'
    ];
}
