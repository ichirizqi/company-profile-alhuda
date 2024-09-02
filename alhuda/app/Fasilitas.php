<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Fasilitas extends Model
{

    public $table = "fasilitas";
    public $timestamps = false;
    protected $fillable = [
        'foto',
        'keterangan'
    ];
}
