<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TVaccination extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //

        Schema::create('t_vaccination', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('test_despistage_effectue',1)->nullable();
            $table->integer('deja_postif',1)->nullable();
            $table->string('resultat_dernier_test',50)->nullable();
            $table->date('date_dernier_test')->nullable();
            $table->int('derniere_dose_vaccination',11)->nullable();
            $table->string('profession',50)->nullable();
            $table->string('e_mail',100)->nullable();
            $table->integer('num_telephone1',50)->nullable();
            $table->integer('num_telephone2',50)->nullable();
            $table->string('adresse1',250);
            $table->string('adresse2',250)->nullable();
            $table->integer('id_type_piece_identite',11);
            $table->integer('id_personne',11);
            $table->integer('id_site_vaccination',11);
            $table->integer('id_arrondissement_residence',11);
            $table->integer('id_district_residence',11);
            $table->integer('id_cat_profession',50);
             $table->integer('supprimer',11);
            $table->timestamps();

            $table->foreign('id_type_piece_identite')
                ->references('id')
                ->on('tr_type_piece_identite')
                ->onDelete('cascade');

            $table->foreign('id_personne')
                ->references('id')
                ->on('t_personne')
                ->onDelete('cascade');

            $table->foreign('id_site_vaccination')
                ->references('id')
                ->on('tr_site_vaccination')
                ->onDelete('cascade');

            $table->foreign('id_arrondissement_residence')
                ->references('id')
                ->on('tr_arrondissement')
                ->onDelete('cascade');

            $table->foreign('id_district_residence')
                ->references('id')
                ->on('tr_district')
                ->onDelete('cascade');

            $table->foreign('id_cat_profession')
                ->references('id')
                ->on('tr_categorie_profession')
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
        Schema::dropIfExists('t_vaccination');

    }
}
