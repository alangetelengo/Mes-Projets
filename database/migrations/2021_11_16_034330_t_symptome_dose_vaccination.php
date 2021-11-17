<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TSymptomeDoseVaccination extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //

        chema::create('t_symptome_Dose_vaccination', function (Blueprint $table) {
            $table->increments('id_symptome_Dose_vaccination',11);
            $table->string('description',500)->nullable();
            $table->date('date_apparition_symptome',11)->nullable();
            $table->integer('id_type_symptome',11);
            $table->date('id_dose_vaccination',11);
            $table->integer('supprimer',11);
            $table->timestamps();

            $table->foreign('id_type_symptome')
                ->references('id')
                ->on('_tr_type_symptome')
                ->onDelete('cascade');

            $table->foreign('id_dose_vaccination')
                ->references('id')
                ->on('t_dose_vaccination')
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
        Schema::dropIfExists('t_symptome_Dose_vaccination');

    }
}
