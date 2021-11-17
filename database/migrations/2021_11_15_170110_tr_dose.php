<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrDose extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('tr_dose', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_dose',50);
            $table->string('lib_dose',250);
            $table->string('jour_proch_dose',11);
            $table->integer('id_type_vaccin',11);
            $table->integer('supprimer',11);
            $table->timestamps();


            $table->foreign('id_type_vaccin')
                ->references('id')
                ->on('tr_type_vaccin')
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
        Schema::dropIfExists('tr_dose');

    }
}
