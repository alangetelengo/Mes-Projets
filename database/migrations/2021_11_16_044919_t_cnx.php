<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TCnx extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        chema::create('t_cnx', function (Blueprint $table) {
            $table->bigInteger('id',20);
            $table->bigInteger('idt_menu',20)->nullable();
            $table->bigInteger('idtr_droit',20)->nullable();
            $table->bigInteger('idt_group',20)->nullable();
            $table->timestamps();

            $table->foreign('idt_group')
                ->references('id')
                ->on('t_user_t_groupe')
                ->onDelete('cascade');

            $table->foreign('idtr_droit')
                ->references('id')
                ->on('t_droit')
                ->onDelete('cascade');

            $table->foreign('idt_menu')
                ->references('id')
                ->on('t_menu')
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
        Schema::dropIfExists('t_cnx');

    }
}
