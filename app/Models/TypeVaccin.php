<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class TypeVaccin extends Model
{
    use HasFactory;
    protected $table = "tr_type_vaccin";
    protected $primaryKey = "ID_TYPE_VACCIN";

    protected $guarded = [];
    public $timestamps = false;

    /**
     * Get the pays that owns the TypeVaccin
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function pays(): BelongsTo
    {
        return $this->belongsTo(Pays::class, 'ID_PAYS', 'ID_PAYS');
    }

    /**
     * Get all of the doses for the TypeVaccin
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function doses(): HasMany
    {
        return $this->hasMany(Dose::class, 'ID_DOSE', 'ID_DOSE');
    }
}
