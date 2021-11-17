<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TDoseVaccination extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('t_dose_vaccination', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_dose_vaccination',50);
            $table->date('date_dose_prisee_vaccin');
            $table->integer('numero_dose_prisee_vaccin',11);
            $table->integer('id_lot_dose_livre',11);
            $table->integer('id_vaccination',11);
            $table->integer('supprimer',11);
            $table->string('numero_registre_vaccination',50);
            $table->timestamps();

            $table->foreign('id_lot_dose_livre')
                ->references('id')
                ->on('lot_dose_livre')
                ->onDelete('cascade');

            $table->foreign('id_vaccination')
                ->references('id')
                ->on('t_vaccination')
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
        Schema::dropIfExists('t_dose_vaccination');

    }
}
