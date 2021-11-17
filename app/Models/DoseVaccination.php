<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class DoseVaccination extends Model
{
    use HasFactory;
    protected $table = "t_dose_vaccination";
    protected $primaryKey = "ID_DOSE_VACCINATION";
    protected $guarded = [];
    public $timestamps = false;

    
    /**
     * Get the lotdoselivre that owns the DoseVaccination
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function lotdoselivre(): BelongsTo
    {
        return $this->belongsTo(LotDoseLivre::class, 'ID_LOT_DOSE_LIVRE', 'ID_LOT_DOSE_LIVRE');
    }

    /**
     * Get the vaccination that owns the DoseVaccination
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function vaccination(): BelongsTo
    {
        return $this->belongsTo(Vaccination::class, 'ID_VACCINATION', 'ID_VACCINATION');
    }
}
