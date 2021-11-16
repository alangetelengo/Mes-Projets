<?php

namespace Database\Seeders;

use App\Models\Droit;
use App\Models\Groupe;
use Illuminate\Database\Seeder;

class DroitSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            ["menu"=>"Gestion des utilisateurs","lib_droit"=>"Afficher les utilisateurs"],
            ["menu"=>"Gestion des utilisateurs","lib_droit"=>"Créer les utilisateurs"],
            ["menu"=>"Gestion des utilisateurs","lib_droit"=>"Modifier les utilisateurs"],
            ["menu"=>"Gestion des utilisateurs","lib_droit"=>"Supprimer les utilisateurs"],
            ["menu"=>"Gestion des utilisateurs","lib_droit"=>"Imprimer les utilisateurs"],
            ["menu"=>"Gestion des utilisateurs","lib_droit"=>"Voir les statistiques utilisateurs"],

            ["menu"=>"Gestion des groupes","lib_droit"=>"Voir les statistiques groupes"],
            ["menu"=>"Gestion des groupes","lib_droit"=>"Voir les statistiques groupes"],
            ["menu"=>"Gestion des groupes","lib_droit"=>"Voir les statistiques groupes"],
            ["menu"=>"Gestion des groupes","lib_droit"=>"Voir les statistiques groupes"],
            ["menu"=>"Gestion des groupes","lib_droit"=>"Voir les statistiques groupes"],
        ];

        foreach($data as $d){
            Droit::create($d);
        }
    }
}
