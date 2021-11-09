<?php

namespace App\Http\Acsi;

use App\Models\Identification;
use Illuminate\Support\Facades\Crypt;

class AcsiIdentification {
    /**
     * // A1 MS MS 0000001 M 90  (21+11)
     * 
     * MSMM3M210
     */
    public static function uniqueId( Identification $identification,string $lastid):string{

        $inom = substr($identification->nom,0,1);
        $iprenom = substr($identification->prenom,0,1);
        $inompere = substr($identification->nom_pere,0,1);
        $inommere = substr($identification->nom_mere,0,1);
        $occurance = $lastid + 1;
        $isexe = substr($identification->sexe,0,1);
        $ianneenaissance = substr($identification->date_naissance,2,2);
        $ianneeidentification = substr($identification->created_at,2,2);
        $imoisidentification = substr($identification->created_at,5,2);
        $sommeanneemoisidentification = (int) $ianneeidentification + (int) $imoisidentification;
        
        $lastString = $inom.$iprenom.$inompere.$inommere.$occurance.$isexe.$ianneenaissance.$sommeanneemoisidentification;
        return $lastString;
    }

    

    
}