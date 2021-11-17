<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrPriorite extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('tr_priorite', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_priorite',50);
            $table->string('lib_priorite',250);
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
        Schema::dropIfExists('tr_priorite');


    }
}
