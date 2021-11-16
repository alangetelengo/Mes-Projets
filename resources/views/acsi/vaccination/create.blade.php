@extends("acsi.layout.app")
@section('title')
    vaccination
@endsection
@section('styles')
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css/plugins/forms/wizard.css')}}">
@endsection
@section('content')
<div class="app-content content" id="app">
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
                                    <!-- Form wizard with step validation section start -->
                <section id="validation">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Création vaccination</h4>
                                    <a class="heading-elements-toggle"><i class="la la-ellipsis-h font-medium-3"></i></a>
                                    
                                </div>
                                <div class="card-content collapse show">
                                    <div class="card-body">
                                        <form action="#" class="steps-validation wizard-circle">

                                            <!-- Step 1 -->
                                            <h6>Etape 1</h6>
                                            <fieldset>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Personne :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <select class="custom-select form-control" id="id_personne" name="id_personne">
                                                                <option value="">Selectionner</option>
                                                                @forelse ($personnes as $personne)
                                                                    <option value="{{$personne->id_personne}}">{{$personne->nom_personne.' '.$personne->prenom_personne}}</option>
                                                                @empty
                                                                    
                                                                @endforelse
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Arrondissement :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <select class="custom-select form-control" id="id_arrondissement_residence" name="id_arrondissement_residence">
                                                                <option value="">Selectionner</option>
                                                                @forelse ($arrondissementresidences as $arrondissementresidence)
                                                                    <option value="{{$arrondissementresidence->id_arrondissement_residence}}">{{$arrondissementresidence->lib_arrondissement}}</option>
                                                                @empty
                                                                    
                                                                @endforelse
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                District residence :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <select class="custom-select form-control" id="id_district_residence" name="id_district_residence">
                                                                <option value="">Selectionner</option>
                                                                @forelse ($districtresidences as $districtresidence)
                                                                    <option value="{{$districtresidence->id_district_residence }}">{{$districtresidence->lib_district}}</option>
                                                                @empty
                                                                    
                                                                @endforelse
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Cat professsion :
                                                               <span class="danger">*</span>
                                                            </label>
                                                            <select class="custom-select form-control" id="id_cat_profession" name="id_cat_profession">
                                                                <option value="">Selectionner</option>
                                                                @forelse ($categorieprofessions as $categorieprofession)
                                                                    <option value="{{$categorieprofession->id_cat_profession}}">{{$categorieprofession->lib_cat_profession}}</option>
                                                                @empty
                                                                    
                                                                @endforelse
                                                            </select>
                                                        </div>
                                                    </div>
                                                  
                                                </div>
                                            </fieldset>

                                            <!-- Step 2 -->
                                            <h6>Etape 2</h6>
                                            <fieldset>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="proposalTitle3">
                                                                Dernière dose de vaccin :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="derniere_dose_vaccin" name="derniere_dose_vaccin" >
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="emailAddress6">
                                                                Numéro pièce identité :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="num_piece_ident_personne" name="num_piece_ident_personne" >
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventType3">
                                                                Profession :
                                                            </label>
                                                            <select class="custom-select form-control" id="profession" name="profession">
                                                                <option value="">Selectionner</option>
                                                              
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="emailAddress6">
                                                                    Email :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="e_mail" name="e_mail">
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>

                                            <!-- Step 3 -->
                                            <h6>Etape 3</h6>
                                            <fieldset>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Num telephone1 :
                                                            </label>
                                                            <input type="text" class="form-control " id="num_telephone1" name="num_telephone1">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Num telephone2 :
                                                            </label>
                                                            <input type="text" class="form-control " id="num_telephone2"  name="num_telephone2">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Adresse1 :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control required" id="adresse1" name="adresse1">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Adresse2 :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="adresse2" name="adresse2">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Type piece identite :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <select class="custom-select form-control" id="id_type_piece_identite" name="id_type_piece_identite">
                                                                <option value="">Selectionner</option>
                                                                @forelse ($typepieceidentites as $typepieceidentite)
                                                                    <option value="{{$typepieceidentite->id_type_piece_identite}}">{{$typepieceidentite->lib_type_piece_identite}}</option>
                                                                @empty
                                                                    
                                                                @endforelse
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="firstName3">
                                                                Test despistage effecuté :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="test_despistage_effectue" name="test_despistage_effectue">
                                                        </div>
                                                    </div>

                                                </div>
                                            </fieldset>

                                            <!-- Step 4 -->
                                            <h6>Step 4</h6>
                                            <fieldset>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="emailAddress5">
                                                                Resultat dernier test :
                                                            </label>
                                                            <input type="text" class="form-control" id="resultat_dernier_test" name="resultat_dernier_test">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="lastName3">
                                                                Déja positif:
                                                            </label>
                                                            <input type="text" class="form-control" id="deja_positif" name="deja_positif">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="location">
                                                                Date dernière test :
                                                            </label>
                                                            <input type="date" class="form-control" id="date_dernier_test" name="date_dernier_test">
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>

                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Form wizard with step validation section end -->
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
@endsection
@section('scripts')




    <script src="{{asset('app-assets/vendors/js/extensions/jquery.steps.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/forms/validation/jquery.validate.min.js')}}"></script>
    <script src="{{asset('app-assets/js/scripts/forms/wizard-steps.js')}}"></script>
    <!-- development version, includes helpful console warnings -->
    <script src="https://cdn.jsdelivr.net/npm/vue@2/dist/vue.js"></script>

    
@endsection