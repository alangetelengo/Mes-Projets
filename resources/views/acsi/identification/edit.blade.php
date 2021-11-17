@extends('acsi.layout.app')
@section('title')
    Modification des informations de : {{ $personne->ID_PERSONNE }}
@endsection
@section('styles')
<link rel="stylesheet" type="text/css" href="{{asset('admin/app-assets/css/plugins/forms/checkboxes-radios.css')}}">
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
                                    <form class="form form-horizontal" method="POST" action="{{route('personne.update',$personne->ID_PERSONNE)}}">
                                        @csrf
                                        @method('PUT')
                                        <div class="form-body">
                                            <h4 class="form-section"><i class="ft-user"></i> Information de la personne</h4>
                                           
                                            <fieldset>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="firstName3">
                                                                Prénom :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="PRENOM_PERSONNE" name="PRENOM_PERSONNE" value="{{ $personne->PRENOM_PERSONNE}}">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="lastName3">
                                                                Nom  :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control required" id="NOM_PERSONNE" name="NOM_PERSONNE" value="{{ $personne->NOM_PERSONNE}}">
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
                                                            <input type="text" class="form-control" id="NOM_JEUNE_FILLE" name="NOM_JEUNE_FILLE" value="{{ $personne->NOM_JEUNE_FILLE}}">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="location">
                                                                Sexe :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <select class="custom-select form-control" id="sexe" name="sexe">
                                                                @if($personne->SEXE == 'M')
                                                                    <option value="{{ $personne->SEXE}}">Masculin</option>
                                                                    <option value="F">Féminin</option>
                                                                @endif
                                                                @if($personne->SEXE == 'F')
                                                                    <option  value="{{ $personne->SEXE}}">Féminin</option>
                                                                    <option  value="M">Masculin</option>
                                                                @endif
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>

                                            <fieldset>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="proposalTitle3">
                                                                Date de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="date" class="form-control" id="DATE_NAISSANCE" name="DATE_NAISSANCE" value="{{ $personne->DATE_NAISSANCE}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="emailAddress6">
                                                                    Lieu de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="LIEU_NAISSANCE" name="LIEU_NAISSANCE" value="{{ $personne->LIEU_NAISSANCE}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventType3">
                                                                Nationnalité :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <select class="custom-select form-control" id="id_pays" name="ID_PATS">
                                                               @forelse ($pays as $pay)
                                                                <option 
                                                                @if($personne->ID_PAYS == $pay->ID_PAYS ) selected @endif
                                                                
                                                                value="{{$pay->ID_PAYS }}">{{$pay->LIB_PAYS_FR}}</option>
                                    
                                                                @empty
                                                                    
                                                                @endforelse
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="emailAddress6">
                                                                    Personne contact :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="NOM_PRENOM_PERSONNE_CONTACT" name="NOM_PRENOM_PERSONNE_CONTACT" value="{{ $personne->NOM_PRENOM_PERSONNE_CONTACT}}">
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>


                                            <fieldset>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Nom père :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control required" id="NOM_PERE" name="NOM_PERE" value="{{ $personne->NOM_PERE}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Nom mère :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control required" id="NOM_MERE" v-model="NOM_MERE" name="NOM_MERE" value="{{ $personne->NOM_MERE}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Téléphone personne contact :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="TELEPHONE_PERSONNE_CONTACT" name="TELEPHONE_PERSONNE_CONTACT" value="{{ $personne->TELEPHONE_PERSONNE_CONTACT}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Email personne contact :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="email" class="form-control" id="EMAIL_PERSONNE_CONTACT" name="EMAIL_PERSONNE_CONTACT" value="{{ $personne->EMAIL_PERSONNE_CONTACT}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Numéro pièce identité personne contact :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="NUM_PIECE_IDENTITE_PERSONNE_CONTACT" value="{{ $personne->NUM_PIECE_IDENTITE_PERSONNE_CONTACT}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Année de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="number" class="form-control" id="NOM_PRENOM_PERSONNE_CONTACT" name="NOM_PRENOM_PERSONNE_CONTACT" value="{{ $personne->NOM_PRENOM_PERSONNE_CONTACT}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Ancien ID vaccination :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="number" class="form-control" id="ANCIEN_ID_VACCINATION" name="ANCIEN_ID_VACCINATION" value="{{ $personne->ANCIEN_ID_VACCINATION}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Ancien ID laboratoire :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="number" class="form-control" id="ANCIEN_ID_LABORATOIRE" name="ANCIEN_ID_LABORATOIRE" value="{{ $personne->ANCIEN_ID_LABORATOIRE}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Ancien ID prise en charge :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="number" class="form-control" id="ANCIEN_ID_PRISE_EN_CHARGE" name="ANCIEN_ID_PRISE_EN_CHARGE" value="{{ $personne->ANCIEN_ID_PRISE_EN_CHARGE}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Rang de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="RANG_NAISSANCE" name="RANG_NAISSANCE" value="{{ $personne->RANG_NAISSANCE}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Numero registre :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="NUMERO_REGISTRE" name="NUMERO_REGISTRE" value="{{ $personne->NUMERO_REGISTRE}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                transferer :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="TRANSFERER" name="TRANSFERER" value="{{ $personne->TRANSFERER}}">
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>

                                            

                                        </div>

                                    
                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">
                                                <i class="la la-check-square-o"></i> Modifier
                                            </button>
                                            <a href="{{route("personne.index")}}" class="btn btn-warning">Retour</a>
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
@section('scripts')
<script src="{{asset('admin/app-assets/vendors/js/forms/icheck/icheck.min.js')}}"></script>
<script>
    $(function(){
        $('#departement_id').on('change',function(){
                var id = $(this).val();
                var dom = "<option value=''>Selectionnez</option>";
                $.get("{{env('APP_URL')}}/departement/"+id+"/districts",function(data){
                    if(data.length > 0){
                        for(var i=0; i <data.length; i++){
                           // dom += "<option value="+data[i].ID_DISTRICT_SANITAIRE +">"+data[i].LIB_DISTRICT_SANITAIRE +"</option>"; 
                        }
                    }
                    $('#district_sanitaire').empty().append(dom);
                });
            });

            $('#district_sanitaire').on('change',function(){
                var id = $(this).val();
                var dom = "<option value=''>Selectionnez</option>";
                $.get("{{env('APP_URL')}}/district/"+id+"/sites",function(data){
                    if(data.length > 0){
                        for(var i=0; i <data.length; i++){
                          //  dom += "<option value="+data[i].ID_SITE_VACCINATION+">"+data[i].LIB_SITE_VACCINATION+"</option>"; 
                        }
                    }
                    $('#site_id').empty().append(dom);
                });
            });
    });
</script>
@endsection