<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hubungi extends Model
{
    //
    public $table = "hubungi";
    public $timestamps = false;
    protected $fillable = [
        'email',
        'pesan',
        'nama',
    ];
}
