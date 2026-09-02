<?php

namespace App\Models;

use App\Models\Depoimento;
use App\Models\Venda;
use illuminate\Database\Eloquent\Model;

class Cliente extends Model{

    protected $table = 'tbl_cliente';
    protected $primaryKey = 'id_cliente';
    public $timestamps = true;

    const CREATE_AT = 'data_criacao_cliente';
    const UPDATED_AT = 'data_atualizacao_cliente';

    protected $fillable = [
        'nome_cliente',
        'email_cliente',
        'senha_cliente',
        'foto_cliente',
        'status_cliente',
    ];

    //UM CLIENTE PODE TER MUITOS DEPOIMENTOS

    public function ClienteDepoimento(){
        return $this->hasMany(Depoimento::class, 'id_cliente', 'id_cliente');
    }
    // UM CLIENTE PODE TER MUITAS VENDAS 
    public function ClienteVenda(){
        return $this->hasMany(Venda::class, 'id_cliente', 'id_cliente');
    }


}