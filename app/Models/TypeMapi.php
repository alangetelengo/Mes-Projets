<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypeMapi extends Model
{
    use HasFactory;
    protected $table = "tr_type_mapi";
    protected $primaryKey = "ID_TYPE_MAPI";
    public $timestamps = false;

    
}
