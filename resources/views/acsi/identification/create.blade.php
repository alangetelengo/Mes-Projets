@extends('acsi.layout.app')
@section('title')
    Ajouter une identification
@endsection
@section('styles')
<link href="{{asset('file-upload/file-upload-with-preview.min.css')}}" rel="stylesheet" type="text/css" />
@endsection
@section('content')
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        
        <div class="content-body">
            <!-- Basic form layout section start -->
            <section id="horizontal-form-layouts">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-content collpase show">
                                <div class="card-body">
                                    <form class="form form-horizontal" method="POST" action="{{route('identification.store')}}">
                                        @csrf
                                        <div class="form-body">
                                            <h4 class="form-section"><i class="ft-user"></i> Information de la personne</h4>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Prénom *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <input type="text" id="projectinput1" class="form-control @error('prenom') is-invalid @enderror" placeholder="Prénom" value="{{old('prenom')}}" name="prenom" required>
                                                    @error('prenom')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Nom *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <input type="text" id="projectinput1" class="form-control @error('nom') is-invalid @enderror" placeholder="Nom" value="{{old('nom')}}" name="nom" required>
                                                    @error('nom')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>
                                         
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput6">Sexe *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <select id="projectinput6" name="sexe" class="form-control @error('sexe') is-invalid @enderror" required>
                                                        <option value="">Choisir le sexe</option>
                                                        <option value="M" {{"M"==old("sexe") ? "selected":""}}>Masculin</option>
                                                        <option value="F" {{"F"==old("sexe") ? "selected":""}}>Féminin</option>
                                                    </select>
                                                    @error('sexe')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Date de naissance *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <div class="row">
                                                        <div class="col">
                                                            <input type="date" value="{{old('date_naissance')}}" id="projectinput1" class="form-control @error('date_naissance') is-invalid @enderror" placeholder="Date de naissance" name="date_naissance">
                                                            @error('date_naissance')
                                                                <div class="invalid-feedback">
                                                                        {{$message}}
                                                                </div>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Lieu de naissance * </label>
                                                <div class="col-md-9 mx-auto">
                                                    <div class="row">
                                                        <div class="col">
                                                            <input type="text" value="{{old('lieu_naissance')}}" id="projectinput1" class="form-control @error('lieu_naissance') is-invalid @enderror" placeholder="Lieu de naissance" name="lieu_naissance">
                                                            @error('lieu_naissance')
                                                                <div class="invalid-feedback">
                                                                        {{$message}}
                                                                </div>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput6">Nationalité *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <select id="projectinput6" name="pays_id" class="form-control @error('pays_id') is-invalid @enderror" required>
                                                        <option value="">Choisir une nationalité</option>
                                                        @forelse ($pays as $pay)
                                                            <option value="{{$pay->id}}" {{$pay->id==old('pays_id') ? "selected":""}}>{{$pay->lib_pays_fr }}</option>
                                                        @empty
                                                            
                                                        @endforelse
                                                    </select>
                                                    @error('pays_id')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Etat civil *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <select id="projectinput6" name="etat_civils_id" class="form-control @error('etat_civils_id') is-invalid @enderror" required>
                                                        <option value="">Choisir une option</option>
                                                        @forelse ($etatcivils as $etatcivil)
                                                        <option value="{{$etatcivil->id}}" {{$etatcivil->etat_civil==old("etat_civils_id") ? "selected":""}}>{{$etatcivil->etat_civil}}</option>
                                                        @empty
                                                            
                                                        @endforelse
                                                        
                                                    </select>
                                                    @error('etat_civils_id')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput6">Type de pièce d'indetité *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <select id="projectinput6" name="type_piece" class="form-control @error('type_piece') is-invalid @enderror">
                                                        <option value="">Choisir le type</option>
                                                        @forelse ($typeidentites as $typeidentite)
                                                        <option value="{{$typeidentite->id}}" {{$typeidentite->lib_type_piece_identite==old("type_piece") ? "selected":""}}>{{$typeidentite->lib_type_piece_identite}}</option>
                                                        @empty
                                                            
                                                        @endforelse
                                                        
                                                    </select>
                                                    @error('type_piece')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Numéro pièce identité </label>
                                                <div class="col-md-9 mx-auto">
                                                    <div class="row">
                                                        <div class="col">
                                                            <input type="text" value="{{old('numero_piece')}}" id="projectinput1" class="form-control @error('numero_piece') is-invalid @enderror" placeholder="Numéro pièce" name="numero_piece">
                                                            @error('numero_piece')
                                                                <div class="invalid-feedback">
                                                                        {{$message}}
                                                                </div>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Téléphone </label>
                                                <div class="col-md-9 mx-auto">
                                                    <div class="row">
                                                        <div class="col">
                                                            <input type="text" value="{{old('phone')}}" id="projectinput1" class="form-control @error('phone') is-invalid @enderror" placeholder="Téléphone" name="phone">
                                                            @error('phone')
                                                                <div class="invalid-feedback">
                                                                        {{$message}}
                                                                </div>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Email </label>
                                                <div class="col-md-9 mx-auto">
                                                    <input type="email" value="{{old('email')}}" id="projectinput1" class="form-control @error('email') is-invalid @enderror" placeholder="Email" name="email">
                                                    @error('email')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput6">Départements *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <select id="departements_id" name="departements_id" class="form-control @error('departements_id') is-invalid @enderror" required>
                                                        <option value="">Choisir un département</option>
                                                        @forelse ($departements as $dep)
                                                            <option value="{{$dep->id}}" {{$dep->id==old('departements_id') ? "selected":""}}>{{$dep->lib_departement }}</option>
                                                        @empty
                                                            
                                                        @endforelse
                                                    </select>
                                                    @error('departements_id')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Adresse Physique *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <input type="text" value="{{old('adresse')}}" id="projectinput1" class="form-control @error('adresse') is-invalid @enderror" placeholder="Adresse" name="adresse" required>
                                                    @error('adresse')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Profession *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <input type="text" value="{{old('profession')}}" id="projectinput1" class="form-control @error('profession') is-invalid @enderror" placeholder="Profession" name="profession" required>
                                                    @error('profession')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Nom du père *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <input type="text" value="{{old('nom_pere')}}" id="projectinput1" class="form-control @error('nom_pere') is-invalid @enderror" placeholder="Nom du père" name="nom_pere" required>
                                                    @error('nom_pere')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Nom du mère *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <input type="text" value="{{old('nom_mere')}}" id="projectinput1" class="form-control @error('nom_mere') is-invalid @enderror" placeholder="Nom de la mère" name="nom_mere" required>
                                                    @error('nom_mere')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Personne contact *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <input type="text" value="{{old('personne_contact')}}" id="projectinput1" class="form-control @error('personne_contact') is-invalid @enderror" placeholder="Personne contact" name="personne_contact" required>
                                                    @error('personne_contact')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Téléphone Personne contact *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <input type="text" value="{{old('telephone_personne_contact')}}" id="projectinput1" class="form-control @error('telephone_personne_contact') is-invalid @enderror" placeholder="Téléphone personne contact" name="telephone_personne_contact" required>
                                                    @error('telephone_personne_contact')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>

                                            {{-- <h4 class="form-section"><i class="ft-user"></i> Information de la vaccination</h4> --}}
                                            
                                        
                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">
                                                <i class="la la-check-square-o"></i> Sauvegarder
                                            </button>
                                            <a href="{{route("identification.index")}}" class="btn btn-warning">Retour</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- // Basic form layout section end -->
        </div>
    </div>
</div>
<!-- END: Content-->
@endsection
