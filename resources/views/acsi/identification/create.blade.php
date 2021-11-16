@extends("acsi.layout.app")
@section('title')
    Création identification
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
                                    <h4 class="card-title">Création identifiant</h4>
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
                                                            <label for="firstName3">
                                                                Prénom :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="prenom_personne" name="prenom_personne" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="lastName3">
                                                                Nom  :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control required" id="nom_personne" name="nom_peronne" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="emailAddress5">
                                                                Nom de la jeune fille :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="nom_jeune_fille" name="nom_jeune_fille" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="location">
                                                                Sexe :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <select class="custom-select form-control required" id="sexe" name="sexe" onkeyup="recupereInfoPersonne();">
                                                                <option value="">Selectionner</option>
                                                                <option value="M">Masculin</option>
                                                                <option value="F">Féminin</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="proposalTitle3">
                                                                Date de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="date" class="form-control" id="date_naissance" name="date_naissance" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="emailAddress6">
                                                                    Lieu de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="lieu_naissance" name="lieu_naissance" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventType3">
                                                                Nationnalité :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <select class="custom-select form-control required" id="id_pays" name="id_pays">
                                                                <option value="">Selectionner</option>
                                                                @forelse ($pays as $pay)
                                                                    <option value="{{$pay->ID_PAYS}}">{{$pay->LIB_PAYS_FR}}</option>
                                                                @empty
                                                                    
                                                                @endforelse
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="emailAddress6">
                                                                    Personne contacte :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="nom_prenom_personne_contact" name="nom_prenom_personne_contact" onkeyup="recupereInfoPersonne();">
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
                                                            <label for="eventName3">
                                                                Nom père :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control required" id="nom_pere" name="nom_pere" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Nom mère :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control required" id="nom_mere" v-model="nom_mere" name="nom_mere" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Téléphone personne contact :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="telephone_personne_contact" name="telephone_personne_contact" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Email personne contact :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="email" class="form-control" id="email_personne_contact" name="email_personne_contact" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Numéro pièce identité personne contact :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="numero_piece_identite_personne_contact" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Année de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="number" class="form-control" id="annee_naissance_personne" name="annee_naissance_personne" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Ancien ID vaccination :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="numero_piece_identite_personne_contact" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Ancien ID laboratoire :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="number" class="form-control" id="annee_naissance_personne" name="annee_naissance_personne" onkeyup="recupereInfoPersonne();">
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
                                                                Ancien ID prise en charge :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="numero_piece_identite_personne_contact" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Rang de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="number" class="form-control" id="annee_naissance_personne" name="annee_naissance_personne" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Numéro registre :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="numero_piece_identite_personne_contact" onkeyup="recupereInfoPersonne();">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Transferer :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="number" class="form-control" id="annee_naissance_personne" name="annee_naissance_personne" onkeyup="recupereInfoPersonne();">
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
                                                            <label for="eventName3">
                                                                Nom :
                                                                <span class="danger"></span>
                                                            </label>
                                                            <div id="rnom_personne"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Prenom  :
                                                                <span class="danger"></span>
                                                            </label>
                                                            <div id="rprenom_personne"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Sexe :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rsexe"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Date naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rdate_naissance"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Lieu de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rlieu_naissance"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Année de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rannee_naissance"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                 Profession:
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rprofession"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Nom de la jeune fille :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rnom_jeune_fille"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                 Nationalité:
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rid_pays"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Nom pere :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rnom_pere"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                 Nom mere:
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rnom_mere"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Nom et prenom personne contacte :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rnom_prenom_personne_contact"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                 Telephone personne contacte:
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rtelephone_personne_contact"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Email personne contacte :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="remail_personne_contact"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Piece identité personne contacte :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rpiece_identite_personne_contact"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Ancien ID vaccination:
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rpiece_identite_personne_contact"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Ancien ID laboratoire:
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rpiece_identite_personne_contact"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Ancien ID prise en charge:
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rpiece_identite_personne_contact"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                rang de naissance:
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rpiece_identite_personne_contact"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Numero de registre:
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rpiece_identite_personne_contact"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Transferer:
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <div id="rpiece_identite_personne_contact"></div>
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

    

    <script>
        // function recupereInfoPersonne()
        // {
        //     var renom_personne                              =  document.getElementById('nom_personne').value;
        //     var reprenom_personne                           =  document.getElementById('prenom_personne').value;
        //     var resexe                                      =  document.getElementById('sexe').value;
        //     var renom_jeune_fille                           =  document.getElementById('nom_jeune_fille').value;
        //     var redate_naissance                            =  document.getElementById('date_naissance').value;
        //     var relieu_naissance                            =  document.getElementById('lieu_naissance').value;
        //     var relieu_naissance                            =  document.getElementById('lieu_naissance').value;
        // //  var reprofession                                =  document.getElementById('profession').value;
        //     var reid_pays                                   =  document.getElementById('id_pays').value;

        //     var chaineidpays = reid_pays.split('/');
        //     libelle_pays = chaineidpays[1];

        //     var renom_pere                                  =  document.getElementById('nom_pere').value;
        //     var renom_mere                                  =  document.getElementById('nom_mere').value;
        //     var renom_prenom_personne_contact               =  document.getElementById('nom_prenom_personne_contact').value;
        //     var retelephone_personne_contact                =  document.getElementById('telephone_personne_contact').value;
        //     var reemail_personne_contact                    =  document.getElementById('email_personne_contact').value;
        //     var renumero_piece_identite_personne_contact    =  document.getElementById('numero_piece_identite_personne_contact').value;
        //     var reannee_naissance_personne                  =  document.getElementById('annee_naissance_personne').value;
        
            
        //     $("#rnom_personne").html('<input type="text" class="form-control" disabled value="'+renom_personne+'">');
        //     $("#rprenom_personne").html('<input type="text" class="form-control" disabled value="'+reprenom_personne+'">');
        //     $("#rsexe").html('<input type="text" class="form-control" disabled value="'+resexe+'">');
        //     $("#rnom_jeune_fille").html('<input type="text" class="form-control" disabled value="'+renom_jeune_fille+'">');
        //     $("#rdate_naissance").html('<input type="text" class="form-control" disabled value="'+redate_naissance+'">');
        //     $("#rlieu_naissance").html('<input type="text" class="form-control" disabled value="'+relieu_naissance+'">');
        // // $("#rprofession").html('<input type="text" class="form-control" disabled value="'+reprofession+'">');
        //     $("#rid_pays").html('<input type="text" class="form-control" disabled value="'+libelle_pays+'">');
        //     $("#rnom_pere").html('<input type="text" class="form-control" disabled value="'+renom_pere+'">');
        //     $("#rnom_mere").html('<input type="text" class="form-control" disabled value="'+renom_mere+'">');
        //     $("#rnom_prenom_personne_contact").html('<input type="text" class="form-control" disabled value="'+renom_prenom_personne_contact+'">');
        //     $("#rtelephone_personne_contact").html('<input type="text" class="form-control" disabled value="'+retelephone_personne_contact+'">');
        //     $("#remail_personne_contact").html('<input type="text" class="form-control" disabled value="'+reemail_personne_contact+'">');
        //     $("#rpiece_identite_personne_contact").html('<input type="text" class="form-control" disabled value="'+renumero_piece_identite_personne_contact+'">');
        //     $("#rannee_naissance").html('<input type="text" class="form-control" disabled value="'+reannee_naissance_personne+'">');
        
        // }

        new Vue([
            "el": ('#app'),
            methods{

            },
            data:{
                ide = {
                    nom:"prefils"
                }
            }
        ]);
    </script>
   
@endsection