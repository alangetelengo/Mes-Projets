<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Agent extends Model
{
    use HasFactory;

    protected $table = "tr_agent";
    protected $primarykey = "id_agent";
    protected $guarded = [];

    public $timestamps = false;


    /**
     * Get the typeagent that owns the Agent
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function typeagent(): BelongsTo
    {
        return $this->belongsTo(TypeAgent::class, 'id_type_agent', 'id_type_agent');
    }
}
