<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Personne extends Model
{
    use HasFactory;
    protected $table = "t_personne";
    protected $primaryKey = "ID_PERSONNE";
    protected $guarded = [];
    public $timestamps = false;

    /**
     * Get the pays that owns the Personne
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function pays(): BelongsTo
    {
        return $this->belongsTo(Pays::class, 'ID_PAYS', 'ID_PAYS');
    }
    
}
