<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class District extends Model
{
    use HasFactory;
    protected $table = "tr_district";
    protected $primaryKey = "ID_DISTRICT";
    protected $guarded = [];

    public $timestamps = false;

    /**
     * Get the districtsanitaire that owns the District
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function districtsanitaire(): BelongsTo
    {
        return $this->belongsTo(DistrictSanitaire::class, 'ID_DISTRICT_SANITAIRE', 'ID_DISTRICT_SANITAIRE');
    }

    /**
     * Get the departement that owns the District
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function departement(): BelongsTo
    {
        return $this->belongsTo(Departement::class, 'ID_DEPARTEMENT', 'ID_DEPARTEMENT');
    }
}
