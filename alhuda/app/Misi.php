<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Misi extends Model
{
    //
    public $table = "misi";
    public $timestamps = false;
    protected $fillable = [
        'misi',
    ];
}
