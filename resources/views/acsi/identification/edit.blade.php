@extends('acsi.layout.app')
@section('title')
    Modification des informations de : {{ $personne->id_personne }}
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
                                    <form class="form form-horizontal" method="POST" action="{{route('personne.update',$personne->id_personne)}}">
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
                                                            <input type="text" class="form-control" id="prenom_personne" name="prenom_personne" value="{{ $personne->prenom_personne}}">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="lastName3">
                                                                Nom  :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control required" id="nom_personne" name="nom_personne" value="{{ $personne->nom_personne}}">
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
                                                            <input type="text" class="form-control" id="nom_jeune_fille" name="nom_jeune_fille" value="{{ $personne->nom_jeune_fille}}">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="location">
                                                                Sexe :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <select class="custom-select form-control" id="sexe" name="sexe">
                                                               
                                                                @if($personne->sexe == 'M')
                                                                    <option value="{{ $personne->sexe}}">Masculin</option>
                                                                    <option value="F">Féminin</option>
                                                                @endif
                                                                @if($personne->sexe == 'F')
                                                                    <option  value="{{ $personne->sexe}}">Féminin</option>
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
                                                            <input type="date" class="form-control" id="date_naissance" name="date_naissance" value="{{ $personne->date_naissance}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="emailAddress6">
                                                                    Lieu de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="lieu_naissance" name="lieu_naissance" value="{{ $personne->lieu_naissance}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventType3">
                                                                Nationnalité :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <select class="custom-select form-control" id="id_pays" name="id_pays">
                                                               @forelse ($pays as $pay)
                                                                <option 
                                                                @if($personne->id_pays == $pay->id_pays) selected @endif
                                                                
                                                                value="{{$pay->id_pays}}">{{$pay->lib_pays_fr}}</option>
                                                        
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
                                                            <input type="text" class="form-control" id="nom_prenom_personne_contact" name="nom_prenom_personne_contact" value="{{ $personne->nom_prenom_personne_contact}}">
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
                                                            <input type="text" class="form-control required" id="nom_pere" name="nom_pere" value="{{ $personne->nom_pere}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Nom mère :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control required" id="nom_mere" v-model="nom_mere" name="nom_mere" value="{{ $personne->nom_mere}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Téléphone personne contact :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="telephone_personne_contact" name="telephone_personne_contact" value="{{ $personne->telephone_personne_contact}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Email personne contact :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="email" class="form-control" id="email_personne_contact" name="email_personne_contact" value="{{ $personne->email_personne_contact}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Numéro pièce identité personne contact :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="numero_piece_identite_personne_contact" value="{{ $personne->numero_piece_identite_personne_contact}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="eventName3">
                                                                Année de naissance :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="number" class="form-control" id="annee_naissance_personne" name="annee_naissance_personne" value="{{ $personne->annee_naissance_personne}}">
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