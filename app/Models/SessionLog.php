<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class SessionLog extends Model
{
    use HasFactory;
    protected $table = "t_session_log";
    protected $primaryKey = "ID";
    protected $guarded = [];

    public $timestamps = false;
    /**
     * Get the appareil that owns the SessionLog
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function appareil(): BelongsTo
    {
        return $this->belongsTo(Appareil::class, 'ID_APPAREIL', 'ID_APPAREIL');
    }

    /**
     * Get the user that owns the SessionLog
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'ID_USER', 'id_user');
    }

}
