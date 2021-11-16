<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class TypeAgent extends Model
{
    use HasFactory;
    protected $table = "tr_type_agent";
    protected $primaryKey = "id_type_agent";

    public $timestamps = false;

    /**
     * Get all of the agents for the TypeAgent
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function agents(): HasMany
    {
        return $this->hasMany(Agent::class, 'id_type_agent', 'id_type_agent');
    }
}
