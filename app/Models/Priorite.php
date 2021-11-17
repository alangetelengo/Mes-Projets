<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Priorite extends Model
{
    use HasFactory;
    protected $table = "tr_priorite";
    protected $primaryKey = "ID_PRIORITE";

    public $timestamps = false;

    /**
     * Get all of the categorieprofessions for the Priorite
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function categorieprofessions(): HasMany
    {
        return $this->hasMany(CategorieProfession::class, 'ID_PRIORITE', 'ID_PRIORITE');
    }

    
}
