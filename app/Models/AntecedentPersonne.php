<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AntecedentPersonne extends Model
{
    use HasFactory;
    protected $table = "t_antecedent_personne";
    protected $primaryKey = "ID_ANTECEDENT_PERSONNE";

}
