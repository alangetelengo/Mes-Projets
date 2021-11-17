<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TAppareil extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('t_appareil', function (Blueprint $table) {
            $table->increments('id');
            $table->string('adresse_mac',100);
            $table->string('seq',30);
            $table->string('id_user',11);
            $table->string('libelle',50);
            $table->string('code',50);
             $table->integer('supprimer',11);
            $table->timestamps();
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
        Schema::dropIfExists('t_appareil');

    }
}
