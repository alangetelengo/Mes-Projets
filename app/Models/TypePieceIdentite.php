<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypePieceIdentite extends Model
{
    use HasFactory;
    protected $table = "tr_type_piece_identite";
    protected $primaryKey = "ID_TYPE_PIECE_IDENTITE";
    protected $guarded = [];

    public $timestamps = false;

    
}
