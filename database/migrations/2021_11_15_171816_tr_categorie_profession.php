<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrCategorieProfession extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('tr_categorie_Profession', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_cat_profession',50);
            $table->string('lib_cat_profession',250);
            $table->integer('id_priorite',11);
            $table->integer('supprimer',11);
            $table->timestamps();

            $table->foreign('id_priorite')
                ->references('id')
                ->on('tr_priorite.')
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
        Schema::dropIfExists('tr_categorie_Profession');
    }
}
