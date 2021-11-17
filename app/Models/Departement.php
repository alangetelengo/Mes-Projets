<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Departement extends Model
{
    use HasFactory;
    protected $table = "tr_departement";
    protected $primaryKey = "ID_DEPARTEMENT";
    protected $guarded = [];

    public $timestamps = false;


    
}
