@extends('acsi.layout.app')
@section('title')
    Modification des informations de : {{ $appareil->ID_APPAREIL }}
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
                                    <form class="form form-horizontal" method="POST" action="{{route('appareil.update',$appareil->ID_APPAREIL)}}">
                                        @csrf
                                        @method('PUT')
                                        <div class="form-body">
                                            <h4 class="form-section"><i class="ft-user"></i> Information de l'appareil</h4>
                                           
                                            <fieldset>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="firstName3">
                                                                Libelle :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control" id="libelle" name="LIBELLE" value="{{ $appareil->LIBELLE}}">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="lastName3">
                                                                Sequence  :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control required" id="seq" name="SEQ" value="{{ $appareil->SEQ}}">
                                                        </div>
                                                    </div>
                                                </div>

                                            </fieldset>

                                            <fieldset>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="proposalTitle3">
                                                                Adresse Mac :
                                                                {{-- <span class="danger">*</span> --}}
                                                            </label>
                                                            <input type="text" class="form-control" id="adresse_mac" name="ADRESSE_MAC" value="{{ $appareil->ADRESSE_MAC}}">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="emailAddress6">
                                                                Code :
                                                                <span class="danger">*</span>
                                                            </label>
                                                            <input type="text" class="form-control" id="code" name="CODE" value="{{ $appareil->CODE}}">
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>



                                        </div>

                                    
                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">
                                                <i class="la la-check-square-o"></i> Modifier
                                            </button>
                                            <a href="{{route("appareil.index")}}" class="btn btn-warning">Retour</a>
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