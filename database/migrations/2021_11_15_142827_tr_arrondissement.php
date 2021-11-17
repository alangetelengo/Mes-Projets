<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrArrondissement extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('tr_arrondissement', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_arrondissement',50);
            $table->string('lib_arrondissement',250);
            $table->integer('population_arrondissement',11);
            $table->integer('superficie_arrondissement',11);
            $table->integer('id_commune',11);
            $table->integer('id_district_sanitaire',11);
            $table->integer('id_type_agent',11);
            $table->integer('supprimer',11);
            $table->timestamps();


            $table->foreign('id_type_agent')
                ->references('id')
                ->on('tr_type_agent')
                ->onDelete('cascade');

            $table->foreign('id_commune')
                ->references('id')
                ->on('tr_commune')
                ->onDelete('cascade');

            $table->foreign('id_district_sanitaire')
                ->references('id')
                ->on('tr_district_sanitaire')
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
        Schema::dropIfExists('tr_arrondissement');
    }
}
