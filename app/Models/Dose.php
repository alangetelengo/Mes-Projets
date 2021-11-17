<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Dose extends Model
{
    use HasFactory;
    protected $table = "tr_dose";
    protected $primaryKey = "ID_DOSE";
    protected $guarded =[];

    public $timestamps = false;

    /**
     * Get the typevaccin that owns the Dose
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function typevaccin(): BelongsTo
    {
        return $this->belongsTo(TypeVaccin::class, 'ID_TYPE_VACCIN', 'ID_TYPE_VACCIN');
    }

    
}
