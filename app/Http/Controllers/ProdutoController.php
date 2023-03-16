<?php

namespace App\Http\Controllers;

use App\Models\Produtos;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as Controller;

class ProdutoController extends Controller
{
    public function index () {

        $produtos = Produtos::get();
        return view('produtos.index',[
           'produtos'=> $produtos
       ]);
    }

    

  
}
