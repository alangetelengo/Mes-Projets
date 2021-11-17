<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Mapi extends Model
{
    use HasFactory;
    protected $table = "t_mapi";
    protected $primaryKey = "ID_MAPI";
    protected $guarded = [];

    public $timestapms = false;

    /**
     * Get the typemapi that owns the Mapi
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function typemapi(): BelongsTo
    {
        return $this->belongsTo(TypeMapi::class, 'ID_TYPE_MAPI', 'ID_TYPE_MAPI');
    }
}
