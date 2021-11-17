<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class SiteVaccination extends Model
{
    use HasFactory;
    protected $table = "tr_site_vaccination";
    protected $primaryKey = "ID_SITE_VACCINATION";
    protected $guarded = [];

    public $timestamps = false;

    /**
     * Get the districtsanitaire that owns the SiteVaccination
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function districtsanitaire(): BelongsTo
    {
        return $this->belongsTo(DistrictSanitaire::class, 'ID_DISTRICT_SANITAIRE', 'ID_DISTRICT_SANITAIRE');
    }

    
}
