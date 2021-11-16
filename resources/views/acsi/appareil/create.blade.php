@extends('acsi.layout.app')
@section('title')
    Créer un appareil
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
                                    <form class="form form-horizontal" method="POST" action="{{route('appareil.store')}}">
                                        @csrf
                                        <div class="form-body">
                                            <h4 class="form-section"><i class="ft-user"></i> Information de l'appareil</h4>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Libelle *</label>
                                                <div class="col-md-9 mx-auto">
                                                    <input type="text" id="projectinput1" class="form-control @error('libelle') is-invalid @enderror" placeholder="Nom de l'appareil" value="{{old('libelle')}}" name="libelle" required>
                                                    @error('libelle')
                                                        <div class="invalid-feedback">
                                                                {{$message}}
                                                        </div>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Adresse Mac * </label>
                                                <div class="col-md-9 mx-auto">
                                                    <div class="row">
                                                        <div class="col">
                                                            <input type="text" value="{{old('adresse_mac')}}" id="projectinput1" class="form-control @error('adresse_mac') is-invalid @enderror" placeholder="Adresse mac de la machine" name="adresse_mac" required>
                                                            @error('adresse_mac')
                                                                <div class="invalid-feedback">
                                                                        {{$message}}
                                                                </div>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Sequence * </label>
                                                <div class="col-md-9 mx-auto">
                                                    <div class="row">
                                                        <div class="col">
                                                            <input type="text" value="{{old('seq')}}" id="projectinput1" class="form-control @error('seq') is-invalid @enderror" placeholder="Sequence" name="seq" required>
                                                            @error('seq')
                                                                <div class="invalid-feedback">
                                                                        {{$message}}
                                                                </div>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-md-3 label-control" for="projectinput1">Code appareil * </label>
                                                <div class="col-md-9 mx-auto">
                                                    <div class="row">
                                                        <div class="col">
                                                            <input type="text" value="{{old('code')}}" id="projectinput1" class="form-control @error('code') is-invalid @enderror" placeholder="Code appareil" name="code" required>
                                                            @error('code')
                                                                <div class="invalid-feedback">
                                                                        {{$message}}
                                                                </div>
                                                            @enderror
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                            {{-- <h4 class="form-section"><i class="ft-user"></i> Information de la vaccination</h4> --}}
                                            
                                        
                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">
                                                <i class="la la-check-square-o"></i> Sauvegarder
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
