<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TLotDoseLivre extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('t_lot_dose_livre', function (Blueprint $table) {
        $table->increments('id',11);
        $table->string('numero_lot_fabricant',250);
        $table->string('lib_lot_dose_livre',250);
        $table->integer('qte_stock_livre',11);
        $table->integer('qte_stock_consomme',11)->nullable();
        $table->integer('qte_stock_perdu',11)->nullable();
        $table->integer('qte_stock_disponible',11)->nullable();
        $table->dateTime('date_reception');
        $table->dateTime('date_fabrication_lot');
        $table->dateTime('date_reception_lot');
        $table->integer('id_dose',11);
        $table->integer('supprimer',11);
        $table->timestamps();

            $table->foreign('id_dose')
                ->references('id')
                ->on('tr_dose')
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
        Schema::dropIfExists('t_lot_dose_livre');

    }
}
