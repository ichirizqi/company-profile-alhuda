<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sambutan extends Model
{
    //
    public $table = "sambutan";
    public $timestamps = false;
    protected $fillable = [
        'sambutan',
        'nama',
        'jabatan',
        'foto',
    ];
}
