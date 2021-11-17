<?php

namespace App\Http\Controllers;

use App\Models\Pays;
use App\Models\Personne;
use Illuminate\Http\Request;
use App\Http\Acsi\AcsiIdentification;
use App\Models\SessionLog;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class PersonneController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $personnes = Personne::all();
        return view("acsi.identification.index", compact("personnes"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $pays = Pays::all();
        return view("acsi.identification.create", compact("pays"));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $personne = new Personne();
        $personne->prenom_personne = $request->prenom_personne;
        $personne->nom_personne = $request->nom_personne;
        $personne->sexe = $request->sexe;
        $personne->id_pays = $request->id_pays;
        $personne->date_naissance = $request->date_naissance;
        $personne->lieu_naissance = $request->lieu_naissance;
        $personne->nom_jeune_fille = $request->nom_jeune_fille;
        $personne->nom_pere = $request->nom_pere;
        $personne->nom_mere = $request->nom_mere;
        $personne->nom_prenom_personne_contact = $request->nom_prenom_personne_contact;
        $personne->telephone_personne_contact = $request->telephone_personne_contact;
        $personne->email_personne_contact = $request->email_personne_contact;
        $personne->num_piece_identite_personne_contact = $request->numero_piece_identite_personne_contact;
        $personne->annee_naissance_personne = $request->annee_naissance_personne;
        $personne->ancien_id_vaccination = $request->ancien_id_vaccination;
        $personne->ancien_id_laboratoire = $request->ancien_id_laboratoire;
        $personne->rang_naissance = $request->rang_naissance;
        $personne->numero_registre = $request->numero_registre;
        $personne->numero_registre = $request->numero_registre;
        $personne->id_session_log = Auth::user()->sessionlogs->last()->ID;

        // $personne->sequence = "A01";
        $occurence = $this->getsequence();
        $personne->numero_personne = AcsiIdentification::uniqueId($personne,$occurence);
        $personne->save();
        Log::channel('sircov')->info("Action : Création d'une identification par le user ".Auth::user()->agent->NOM_AGENT. " à ".now() ." par la session ".SessionLog::where('ID_USER',Auth::user()->id_user)->get()->last());
        return response()->json([
            "code"=>"200",
            "msg"=>"Identification effectuée avec succès",
            "action"=>"redirect",
            "location"=>route('personne.capture',$personne->id_personne),
            "personne"=>$personne
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $personne = Personne::find($id);
        if($personne==null){
            toastr()->error("Impossible de charger cette page");
            return redirect()->back();
        }
        
        return view("acsi.identification.show",compact("personne"));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $pays = Pays::all();
        $personne = Personne::find($id);
        if($personne==null){
            toastr()->error("Impossible de charger cette page");
            return redirect()->back();
        }
        return view("acsi.identification.edit",compact("personne","pays"));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $app = Personne::find($id);
        if($app==null){
            toastr()->error("Impossible de charger cette page");
            return redirect()->back();
        }

        $request->validate([
            "PRENOM_PERSONNE"=>["required","string"],
            "NOM_PERSONNE"=>["required","string"],
            "NOM_JEUNE_FILLE"=>["required","string"],
            "DATE_NAISSANCE"=>["required","string"],
            "LIEU_NAISSANCE"=>["required","string"],
            "ID_PAYS"=>["required","string"],
            "NOM_PRENOM_PERSONNE_CONTACT"=>["required","string"],
            "NOM_PERE"=>["required","string"],
            "NOM_MERE"=>["required","string"],
            "TELEPHONE_PERSONNE_CONTACT"=>["required","string"],
            "EMAIL_PERSONNE_CONTACT"=>["required","string"],
            "NUM_PIECE_IDENTITE_PERSONNE_CONTACT"=>["required","string"],
            "NOM_PRENOM_PERSONNE_CONTACT"=>["required","string"],
            "ANCIEN_ID_VACCINATION"=>["required","string"],
            "ANCIEN_ID_LABORATOIRE"=>["required","string"],
            "ANCIEN_ID_PRISE_EN_CHARGE"=>["required","string"],
            "RANG_NAISSANCE"=>["required","string"],
            "NUMERO_REGISTRE"=>["required","string"],
            "TRANSFERER"=>["required","string"]
        ]);

        try{
            $app->PRENOM_PERSONNE = $request->PRENOM_PERSONNE;
            $app->NOM_PERSONNE = $request->NOM_PERSONNE;
            $app->NOM_JEUNE_FILLE = $request->NOM_JEUNE_FILLE;
            $app->DATE_NAISSANCE = $request->DATE_NAISSANCE;
            $app->LIEU_NAISSANCE = $request->LIEU_NAISSANCE;
            $app->ID_PAYS = $request->ID_PAYS;
            $app->NOM_PRENOM_PERSONNE_CONTACT = $request->NOM_PRENOM_PERSONNE_CONTACT;
            $app->NOM_PERE = $request->NOM_PERE;
            $app->NOM_MERE = $request->NOM_MERE;
            $app->TELEPHONE_PERSONNE_CONTACT = $request->TELEPHONE_PERSONNE_CONTACT;
            $app->EMAIL_PERSONNE_CONTACT = $request->EMAIL_PERSONNE_CONTACT;
            $app->NUM_PIECE_IDENTITE_PERSONNE_CONTACT = $request->NUM_PIECE_IDENTITE_PERSONNE_CONTACT;
            $app->NOM_PRENOM_PERSONNE_CONTACT = $request->NOM_PRENOM_PERSONNE_CONTACT;
            $app->ANCIEN_ID_VACCINATION = $request->ANCIEN_ID_VACCINATION;
            $app->ANCIEN_ID_LABORATOIRE = $request->ANCIEN_ID_LABORATOIRE;
            $app->ANCIEN_ID_PRISE_EN_CHARGE = $request->ANCIEN_ID_PRISE_EN_CHARGE;
            $app->RANG_NAISSANCE = $request->RANG_NAISSANCE;
            $app->NUMERO_REGISTRE = $request->NUMERO_REGISTRE;
            $app->TRANSFERER = $request->TRANSFERER;
            $app->save();
            toastr()->success("Personne modifié avec succès");
            return redirect()->route('personne.index');
        }catch(Exception $e){
            toastr()->error($e->getMessage());
            return redirect()->back()->withInput();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function getsequence(){
        $seq = 0;
        $personne = Personne::where('ID_SESSION_LOG',Auth::user()->sessionlogs->last()->ID)->orderBy('ID_PERSONNE','DESC')->first();
        if($personne==null){
            $seq = $seq;
            return $seq +1;
        }

        $seq = (int) $personne->ID_PERSONNE + 1;
        return $seq;
    }

    public function capture($id)
    {
        $personne = Personne::find($id);
        return view("acsi.identification.capture",compact("personne"));
    }

    public function capturestore(Request $request,$id){
        $personne = Personne::find($id);
        
        $image = $request->identification_photo;
        $nom_image = $personne->NUMERO_PERSONNE.".jpeg";  
        $result = Storage::disk('public')->put($nom_image, base64_decode($image));

        //return $image;
    
        if($result) {
            $personne->PHOTO = $nom_image;
            $personne->save();
            return "reussie";
        } else {
            return "echec";
        }
    }
}
