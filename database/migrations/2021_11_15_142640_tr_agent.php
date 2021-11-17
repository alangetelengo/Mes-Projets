<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrAgent extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tr_agent', function (Blueprint $table) {
            $table->increments('id');
            $table->string('num_mat_agent',50);
            $table->string('nom_agent',50);
            $table->string('prennom_agent',50);
            $table->date('date_naissance');
            $table->string('lieu_naissance',32);
            $table->string('sexe',8);
            $table->integer('id_type_agent',11);
            $table->string('contact1',14);
            $table->string('contact2',14);
            $table->string('adresse',250);
            $table->integer('supprimer',11);

            $table->timestamps();


            $table->foreign('id_type_agent')
                ->references('id')
                ->on('tr_type_agent')
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
         Schema::dropIfExists('tr_agent');
    }
}
