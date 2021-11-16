<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Groupe extends Model
{
    use HasFactory;
    protected $table = "t_groupe";
    protected $primaryKey = "IDt_groupe";

    public $timestamps = false;

    protected $guarded = [];

    /**
     * The roles that belong to the Groupe
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function droits(): BelongsToMany
    {
        return $this->belongsToMany(Droit::class, 't_cnx', 'IDt_groupe', 'IDtr_droit');
    }

    public function users(): BelongsToMany
     {
         return $this->belongsToMany(User::class, 't_user_t_groupe', 'idt_groupe', 'id_user');
     }

}
