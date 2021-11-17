<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class DistrictSanitaire extends Model
{
    use HasFactory;
    protected $table = "tr_district_sanitaire";
    protected $guarded = [];

    protected $primaryKey = "ID_DISTRICT_SANITAIRE";

    /**
     * Get all of the arrondissements for the DistrictSanitaire
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function arrondissements(): HasMany
    {
        return $this->hasMany(Arrondissement::class, 'ID_DISTRICT_SANITAIRE', 'ID_DISTRICT_SANITAIRE');
    }

}
