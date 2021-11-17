<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Arrondissement extends Model
{
    use HasFactory;
    protected $table = "tr_arrondissement";
    protected $guarded = [];
    protected $primaryKey = "ID_ARRONDISSEMENT";

    public $timestamps = false;

    /**
     * Get the districtsanitaire that owns the Arrondissement
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function districtsanitaire(): BelongsTo
    {
        return $this->belongsTo(DistrictSanitaire::class, 'ID_DISTRICT_SANITAIRE', 'ID_DISTRICT_SANITAIRE');
    }

    
}
