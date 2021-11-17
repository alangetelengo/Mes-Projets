<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TUserTGroupe extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('t_user_t_groupe', function (Blueprint $table) {
            $table->increments('id',20);
            $table->string('id_user',11);
            $table->timestamps();

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
        Schema::dropIfExists('t_user_t_groupe');

    }
}
