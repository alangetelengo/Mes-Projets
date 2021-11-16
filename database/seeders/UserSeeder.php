<?php

namespace Database\Seeders;

use App\Models\Agent;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $agent = Agent::create([
            "num_mat_agent"=>"AGT-BZV-0001",
            "nom_agent"=>"AGENT1",
            "prenom_agent"=>"PRENOM1",
            "date_naissance"=>"1998-06-11",
            "lieu_naissance"=>"BRAZZAVILLE",
            "sexe"=>"MASCULIN",
            "id_type_agent"=>"1",
            "contact1"=>"053105425",
            "contact2"=>"053105425",
            "adresse"=>"ADRESSE1"
        ]);

        $user = User::create([
            "login"=>"login1",
            "mot_de_passe"=>Hash::make("123456"),
            "question_recup_1"=>"boni",
            "reponse_recup_1"=>"bien",
            "id_agent"=>1
        ]);
    }
}
