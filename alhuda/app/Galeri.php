<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Galeri extends Model
{
    //
    public $table = "galeri";
    public $timestamps = false;
    protected $fillable = [
        'foto',
        'keterangan',
        'link'
    ];
}
