<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class CategorieProfession extends Model
{
    use HasFactory;
    protected $table = "tr_categorie_profession";
    protected $primaryKey = "ID_CAT_PROFESSION";

    protected $guarded =[];

    public $timestamps = false;

    /**
     * Get the priorite that owns the CategorieProfession
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function priorite(): BelongsTo
    {
        return $this->belongsTo(Priorite::class, 'ID_PRIORITE', 'ID_PRIORITE');
    }
}
