<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypeAntecedent extends Model
{
    use HasFactory;
    protected $table = "tr_type_antecedent";
    protected $primaryKey = "ID_TYPE_ANTECEDENT";
    protected $guarded = [];

    public $timestamps = false;


    
}
