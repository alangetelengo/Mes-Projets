<?php

namespace App\Http\Controllers;

use App\Models\Appareil;
use Exception;
use Illuminate\Http\Request;

class AppareilController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $appareils = Appareil::all();
        return view("acsi.appareil.index",compact("appareils"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        return view("acsi.appareil.create");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            "adresse_mac"=>["required","string","unique:t_appareil"],
            "code"=>["required","string"],
            "seq"=>["required","string","unique:t_appareil"],
            "libelle"=>["required","string"]
        ]);

        try{
            $app = new Appareil();
            $app->adresse_mac = $request->adresse_mac;
            $app->code = $request->code;
            $app->seq = $request->seq;
            $app->libelle = $request->libelle;
            $app->save();
            toastr()->success("Appareil ajouté avec succès");
            return redirect()->back();
        }catch(Exception $e){
            toastr()->error($e->getMessage());
            return redirect()->back()->withInput();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $appareil = Appareil::find($id);
        if($appareil==null){
            toastr()->error("Impossible de cahrger cette page");
            return redirect()->back();
        }
        
        return view("acsi.appareil.show",compact("appareil"));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $appareil = Appareil::find($id);
        if($appareil==null){
            toastr()->error("Impossible de cahrger cette page");
            return redirect()->back();
        }
        return view("acsi.appareil.edit",compact("appareil"));
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
        $app = Appareil::find($id);
        if($app==null){
            toastr()->error("Impossible de cahrger cette page");
            return redirect()->back();
        }

        $request->validate([
            "adresse_mac"=>["required","string"],
            "code"=>["required","string"],
            "sequence"=>["required","string"],
            "libelle"=>["required","string"]
        ]);

        try{
            $app->adresse_mac = $request->adresse_mac;
            $app->code = $request->code;
            $app->sequence = $request->sequence;
            $app->liebelle = $request->liebelle;
            $app->save();
            toastr()->success("Appareil modifié avec succès");
            return redirect()->back();
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
        $appareil = Appareil::find($id);
        if($appareil==null){
            toastr()->error("Impossible de cahrger cette page");
            return redirect()->back();
        }

        try{
            $appareil->delete();
            toastr()->success("Apperil supprimé avec succès");
            return redirect()->back();
        }catch(Exception $e){
            toastr()->error($e->getMessage());
            return redirect()->back();
        }
    }
}
