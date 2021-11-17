<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrTypeVaccin extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('tr_type_Vaccin', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_type_vaccin',50);
            $table->string('lib_type_vaccin',250);
            $table->string('type_fabrication',250);
            $table->string('temperature_stock',250);
            $table->integer('nbre_dose',11);
            $table->integer('id_pays_origine',11);
            $table->integer('supprimer',11);
            $table->timestamps();

            $table->foreign('id_pays_origine')
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
        Schema::dropIfExists('tr_type_Vaccin');
    }
}
