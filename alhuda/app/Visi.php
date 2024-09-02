<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Visi extends Model
{
    //
    public $table = "visi";
    public $timestamps = false;
    protected $fillable = [
        'visi',
    ];
}
