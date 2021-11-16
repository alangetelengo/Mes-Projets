<?php

namespace App\Models;

use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $table = "t_user";
    protected $primaryKey = "id_user";
    protected $guarded = [];
    public $timestamps = false;



     /**
      * Get the agent that owns the User
      *
      * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
      */
     public function agent(): BelongsTo
     {
         return $this->belongsTo(Agent::class, 'ID_AGENT', 'ID_AGENT');
     }

     /**
      * The groupe that belong to the User
      *
      * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
      */
     public function groupes(): BelongsToMany
     {
         return $this->belongsToMany(Groupe::class, 't_user_t_groupe', 'idt_groupe', 'id_user');
     }

     public function droitsids(){
         return $this->groupes->map->droits->flatten()->pluck('LIB_DROIT')->unique();
     }

     /**
      * Get all of the comments for the User
      *
      * @return \Illuminate\Database\Eloquent\Relations\HasMany
      */
     public function sessionlogs(): HasMany
     {
         return $this->hasMany(SessionLog::class, 'ID_USER', 'id_user');
     }
}
