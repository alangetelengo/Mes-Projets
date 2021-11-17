<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrDistrict extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('tr_district', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_district',50);
            $table->string('lib_district',250);
            $table->integer('population_district',11);
            $table->integer('superficie_district',11);
            $table->integer('id_departement',11);
            $table->integer('id_district_sanitaire',11);
            $table->integer('supprimer',11);
            $table->timestamps();

            $table->foreign('id_departement')
                ->references('id')
                ->on('tr_departement')
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
        Schema::dropIfExists('tr_district');

    }
}
