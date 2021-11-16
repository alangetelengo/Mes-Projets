<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Droit extends Model
{
    use HasFactory;
    protected $table = "t_droit";
    protected $primaryKey = "IDtr_droit";
    public $timestamps = false;
    protected $guarded = [];

    /**
     * The roles that belong to the Droit
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function groupes(): BelongsToMany
    {
        return $this->belongsToMany(Groupe::class, 't_cnx', 'IDt_groupe', 'IDtr_droit');
    }
}
