<?php

namespace App\Http\Controllers;

use App\Models\SessionLog;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        return view("acsi.dashboard.index");
    }

    public function login(Request $request){
        
        try{
            $request->validate([
                "email"=>["required","string"],
                "password"=>["required"]
            ]);
            
            $email = $request->email;
            $password = $request->password;
    
            $user = User::where("login",$email)->first();
            if($user==null){
                toastr()->error("Login incorrecte");
                return redirect()->back()->withInput();
            }
    
            

           if(!Hash::check($password, $user->mot_de_passe)){
               toastr()->error("Mot de passe incorrect");
               return redirect()->back()->withInput();
           }
    
           
            if($user->supprimer == "1"){
                toastr()->warning("Compte inactif");
                return redirect()->back()->withInput();
            }
    
            Auth::loginUsingId($user->id_user);
            //Création d ela connexion
            SessionLog::create([
                "CODE"=>uniqid(),
                "ID_APPAREIL"=>1,
                "ID_USER"=>Auth::user()->id_user,
                "CANAL"=>"WEB",
                "ADRESSE_IP"=>$request->ip()
            ]);

            
            
            toastr()->success("Connexion réussie");
            return redirect()->route('dashboard.index');

        }catch(Exception $e){
            toastr()->error($e->getMessage());
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
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
}
