<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TAntecedentPersonne extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('t_antecedent_personne', function (Blueprint $table) {
            $table->increments('id');
            $table->string('description',50);
            $table->date('date_declaration');
            $table->integer('id_type_antecedent',11);
            $table->date('id_personne',11);
            $table->integer('supprimer',11);
            $table->timestamps();

            $table->foreign('id_personne')
                ->references('id')
                ->on('t_personne')
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
        Schema::dropIfExists('t_antecedent_personne');

    }
}
