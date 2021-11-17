<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LotDoseLivre extends Model
{
    use HasFactory;
    protected $table = "t_lot_dose_livre";
    protected $primaryKey = "ID_LOT_DOSE_LIVRE";
    protected $guarded = [];

    public $timestamps = false;

}
