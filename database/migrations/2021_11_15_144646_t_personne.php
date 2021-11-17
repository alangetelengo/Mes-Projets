<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TPersonne extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('t_personne', function (Blueprint $table) {
            $table->increments('id');
            $table->string('numero_personne',15);
            $table->string('nom_personne',100)->nullable();
            $table->string('nom_jeune_fille',100)->nullable();
            $table->string('prenom_personne',100)->nullable();
            $table->date('date_naissance')->nullable();
            $table->string('lieu_naissance',50)->nullable();
            $table->string('sexe',10);
            $table->integer('id_pays',11);
            $table->integer('supprimer',11);
            $table->string('nom_prenom_personne_contact',100)->nullable();
            $table->string('telephone_personne_contact',20)->nullable();
            $table->string('email_personne_contact',50)->nullable();
            $table->string('num_piece_identite_personne_contact',50)->nullable();
            $table->string('nom_pere',50);
            $table->string('nom_mere',50);
            $table->integer('ancien_id_vaccination',50)->nullable();
            $table->integer('ancien_id_laboratoire',50)->nullable();
            $table->integer('ancien_id_prise_en_charge',50)->nullable();
            $table->string('photo',50)->nullable();
            $table->string('rang_naissance',3)->nullable();
            $table->string('numero_registre',50)->nullable();
            $table->dateTime('created_at');
            $table->dateTime('updated_at');
            $table->string('last_used_at',50)->nullable();
            $table->string('id_session_log',11);
            $table->string('transfer',50);
            $table->integer('id_pays',4);
            $table->integer('supprimer',11);
            $table->timestamps();

            $table->foreign('id_session_log')
                ->references('id')
                ->on('t_session_log')
                ->onDelete('cascade');

            $table->foreign('id_pays')
                ->references('id')
                ->on('tr_pays')
                ->onDelete('cascade');


        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
        Schema::dropIfExists('t_personne');
    }
}
