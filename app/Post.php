<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
//load softdelete class;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{

    //directory of image folder - define gloablly
    public $directory ="../images/";

    protected $table = 'posts';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    //use softDeletes class
    use softDeletes;

    //add date deleted as array
    protected $dates =['delete_at'];

    protected $fillable = [
        'title',
        'body',
        'path'
    ];

    /*method Inverse to retrive posted post human names*/
    public function userTable(){
        $user = $this->belongsTo('App\User','userId');
        return $user;

    }
    /*
    |--------------------------------------------------
    | Laravel Polynmorphic - Post Model ['morphMany']
    |---------------------------------------------------
    */
    //polymorfiq abstract a data
    public function photoes(){
        //return $this->morphMany('App\Photo', 'imageables');
        return $this->morphMany('App\Photo','imageables', 'imageable_type','imageable_id');
    }


    /*
   |--------------------------------------------------
   | Laravel Polynmorphic - Many to Many
   |---------------------------------------------------
   */
    public function tags(){
        return $this->morphToMany('App\Tag','taggable', 'taggables','taggable_id');
    }


    //this is image variable we can use this is second methid of define the directory globally
    public function getPathAttribute($value){
        return $this->directory. $value;
    }

}
