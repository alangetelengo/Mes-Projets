<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Appareil extends Model
{

    use HasFactory;
    protected $table = "t_appareil";
    protected $primaryKey = "ID_APPAREIL";
    public $timestamps = false;


    /**
     * Get all of the sessionlogs for the Appareil
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function sessionlogs(): HasMany
    {
        return $this->hasMany(SessionLog::class, 'ID_APPAREIL', 'ID_APPAREIL');
    }

}
