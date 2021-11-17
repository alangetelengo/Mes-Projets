<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrDepartement extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //

        chema::create('tr_departement', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_departement',50);
            $table->string('lib_departement',250);
            $table->integer('population_departement',11);
            $table->integer('superficie_departement',11);
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
        Schema::dropIfExists('tr_departement');
    }
}
