@extends('app')

@section('title','Lista de Produtos')
@section('content')
        <div class="card-header">
          Lista de produtos
        </div>
        <table class = "table">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Preço</th>
                    <th scope="col">Estoque</th>

                </tr>
            </thead>
            <tbody>
                @foreach($produtos as $produto)
                    <tr>

                        <th scope="row">{{ $produto ->id }}</th>
                        <th scope="row">{{ $produto ->nome_produto }}</th>
                        <th scope="row">{{ $produto ->preco }}</th>
                        <th scope="row">{{ $produto ->qtd_estoque }}</th>

                    </tr>
                @endforeach
            </tbody>
        </table>

   
@endsection