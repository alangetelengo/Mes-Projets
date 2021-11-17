<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrDistrictSanitaire extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('tr_district_Sanitaire', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_district_sanitaire',50);
            $table->string('lib_district_sanitaire',250);
            $table->integer('id_departement',11);
            $table->integer('supprimer');
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
        Schema::dropIfExists('tr_district_Sanitaire');
    }
}
