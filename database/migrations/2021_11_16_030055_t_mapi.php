<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TMapi extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('t_mapi', function (Blueprint $table) {
            $table->increments('id',11);
            $table->string('lib_mapi',250);
            $table->string('description_mapi',500)->nullable();
            $table->date('date_apparition_mapi')->nullable();
            $table->date('date_declaration_mapi')->nullable();
            $table->integer('id_dose',11);
            $table->integer('id_type_mapi',11);
            $table->integer('supprimer',11);
            $table->timestamps();

            $table->foreign('id_dose')
                ->references('id')
                ->on('tr_dose')
                ->onDelete('cascade');

            $table->foreign('id_type_mapi')
                ->references('id')
                ->on('tr_type_mapi')
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
        Schema::dropIfExists('t_mapi');

    }
}
