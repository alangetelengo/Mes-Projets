<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Commune extends Model
{
    use HasFactory;
    protected $table = "tr_commune";
    protected $primaryKey = "ID_COMMUNE";
    protected $guarded = [];

    public $timestamps = false;

    /**
     * Get the departement that owns the Commune
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function departement(): BelongsTo
    {
        return $this->belongsTo(Departement::class, 'ID_DEPARTEMENT', 'ID_DEPARTEMENT');
    }

    
}
