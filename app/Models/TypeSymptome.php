<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypeSymptome extends Model
{
    use HasFactory;
    protected $table = "tr_type_symptome";
    protected $primaryKey = "ID_TYPE_SYMPTOME";
    protected $guarded = [];

    public $timestamps = false;
}
