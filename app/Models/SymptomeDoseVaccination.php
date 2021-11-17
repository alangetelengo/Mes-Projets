<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class SymptomeDoseVaccination extends Model
{
    use HasFactory;
    protected $table = "t_symptome_dose_vaccination";
    protected $primaryKey = "ID_SYMPTOME_DOSE_VACCINATION";
    protected $guarded = [];

    public $timestamps = false;

    /**
     * Get the typesymptome that owns the SymptomeDoseVaccination
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function typesymptome(): BelongsTo
    {
        return $this->belongsTo(TypeSymptome::class, 'ID_TYPE_SYMPTOME', 'ID_TYPE_SYMPTOME');
    }

    /**
     * Get the dosevaccination that owns the SymptomeDoseVaccination
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function dosevaccination(): BelongsTo
    {
        return $this->belongsTo(DoseVaccination::class, 'ID_DOSE_VACCINATION', 'ID_DOSE_VACCINATION');
    }
}
