<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    //
    protected $fillable = [
        'path',
        'imageable_id',
        'imageable_type',

    ];
    /*polymorphics */
    public function imageables(){
        return $this->morphTo();
    }
}
