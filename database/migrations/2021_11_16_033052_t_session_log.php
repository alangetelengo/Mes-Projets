<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TSessionLog extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('t_session_log', function (Blueprint $table) {
            $table->increments('id',20);
            $table->string('code',50);
            $table->integer('id_appareil',11);
            $table->string('id_user',11);
            $table->date('dateheure_connexion');
            $table->string('canal',50)->nullable();
            $table->string('adresse_ip',50)->nullable();
            $table->integer('supprimer',11);
            $table->timestamps();

            $table->foreign('id_appareil')
                ->references('id')
                ->on('t_appareil')
                ->onDelete('cascade');

            $table->foreign('id_user')
                ->references('id')
                ->on('t_user')
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
        Schema::dropIfExists('t_session_log');

    }
}
