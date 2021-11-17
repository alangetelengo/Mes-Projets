<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrSiteVaccination extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('tr_site_Vaccination', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_site_vaccination',50);
            $table->string('lib_site_vaccination',250);
            $table->integer('adrese_site_vaccination',500);
            $table->string('contact_site_vaccination',250);
            $table->integer('categ_site_vaccination',250);
            $table->integer('id_district_sanitaire',11);
            $table->integer('supprimer',11);
            $table->timestamps();


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
        Schema::dropIfExists('tr_site_Vaccination');

    }
}
