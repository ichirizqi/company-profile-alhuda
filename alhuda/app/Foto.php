<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Foto extends Model
{
    //
    public $table = "foto";
    public $timestamps = false;
    protected $fillable = [
        'foto',
    ];
}
