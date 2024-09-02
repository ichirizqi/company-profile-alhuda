<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kontak extends Model
{
    //
    public $table = "kontak";
    public $timestamps = false;
    protected $fillable = [
        'keterangan',
        'nama',
        'foto'
    ];
}
