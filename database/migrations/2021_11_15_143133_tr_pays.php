<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TrPays extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tr_pays', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code_pays',4);
            $table->string('lib_pays_fr',50)->nullable();
            $table->string('lib_pays_eng',50);
            $table->string('numero_pays',30);
            $table->string('code_alpha2',30);
            $table->string('code_alpha3',30);
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
        Schema::dropIfExists('tr_pays');
    }
}
