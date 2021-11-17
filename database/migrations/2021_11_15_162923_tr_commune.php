<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrCommune extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('tr_commune', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_commune',50);
            $table->string('lib_commune',250);
            $table->integer('population_commune',11);
            $table->integer('superficie_commune',11);
            $table->integer('id_departement',11);
            $table->integer('supprimer',11);
            $table->timestamps();

            $table->foreign('id_departement')
                ->references('id')
                ->on('tr_departement')
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
        Schema::dropIfExists('tr_commune');
    }
}
