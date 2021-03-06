@extends('acsi.layout.app')
@section('title')
    Liste des indentités
@endsection
@section('styles')
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
@endsection
@section('content')
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body">
            <!-- Revenue, Hit Rate & Deals -->
            <div class="row">
                <div class="col-xl-12 col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Affichage Identifications</h4>
                            <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                            <div class="heading-elements">
                                <ul class="list-inline mb-0">
                                    <li><a href="{{ route('personne.create') }}" class="btn btn-primary" style="color: white">Ajouter</a></li>
                                </ul>
                                
                            </div>
                        </div>
                        
                        <div class="card-content collapse show">
                            <div class="card-body pt-0">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered zero-configuration">
                                        <thead>
                                            <tr>
                                                <th>Identifiant</th>
                                                <th>Nom</th>
                                                <th>Prénom</th>
                                                <th>Sexe</th>
                                                <th>Nom père</th>
                                                <th>Nom mère</th>
                                                <th>Nationalité</th>
                                                <th>Date</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                                @forelse ($personnes as $personne)
                                                    <tr>
                                                        <td>{{$personne->NUMERO_PERSONNE}}</td>
                                                        <td>{{$personne->NOM_PERSONNE}}</td>
                                                        <td>{{$personne->PRENOM_PERSONNE}}</td>
                                                        <td>{{$personne->SEXE}}</td>
                                                        <td>{{$personne->NOM_PERE}}</td>
                                                        <td>{{$personne->NOM_MERE}}</td>
                                                        <td>{{$personne->pays->LIB_PAYS_FR}}</td>
                                                        <td>{{ date('d-m-Y',strtotime($personne->created_at)) }}</td>
                                                        <td>
                                                            <div class="btn-group">
                                                                <button type="button" class="btn btn-info  btn-sm dropdown-toggle btn-block" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                  Action
                                                                </button>
                                                                <div class="dropdown-menu">
                                                                  
                                                                    <a class="dropdown-item" href="{{route('personne.show',$personne->ID_PERSONNE)}}">Voir</a>    
                                                                    <a class="dropdown-item" href="{{route('personne.edit',$personne->ID_PERSONNE)}}">Modifier</a>
                                                                    <form action="{{route('personne.update',$personne->ID_PERSONNE)}}" method="POST">
                                                                        @csrf
                                                                        @method('DELETE')
                                                                        <button type="submit" class="dropdown-item">Supprimer</button>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                @empty
                                                    
                                                @endforelse
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Identifiant</th>
                                                <th>Nom</th>
                                                <th>Prénom</th>
                                                <th>Sexe</th>
                                                <th>Nom père</th>
                                                <th>Nom mère</th>
                                                <th>Nationalité</th>
                                                <th>Date</th>
                                                <th>Actions</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <!--/ Revenue, Hit Rate & Deals -->
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script src="{{asset('app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
<script>
    $(function(){
        $('.zero-configuration').DataTable();
    });
</script>
@endsection