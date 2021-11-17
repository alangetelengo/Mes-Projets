<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TUser extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('t_user', function (Blueprint $table) {
            $table->increments('id',11);
            $table->string('login',50);
            $table->string('mot_de_passe',20);
            $table->string('question_recup_1',500);
            $table->string('reponse_recup_1',500);
            $table->integer('id_agent',500);
            $table->integer('supprimer',11);
            $table->timestamps();

            $table->foreign('id_agent')
                ->references('id')
                ->on('tr_agent')
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
        Schema::dropIfExists('t_user');

    }
}
