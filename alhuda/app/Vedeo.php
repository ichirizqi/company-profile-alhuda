<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vedeo extends Model
{
    //
    public $table = "vedeo";
    public $timestamps = false;
    protected $fillable = [
        'vedeo'
    ];
}
