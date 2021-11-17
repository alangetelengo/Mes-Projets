<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrTypeAgent extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('tr_type_agent', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_type_agent',50);
            $table->string('lib_type_agent',250);
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
        Schema::dropIfExists('tr_type_agent');
    }
}
