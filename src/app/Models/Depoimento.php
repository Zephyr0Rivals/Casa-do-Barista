<?php

namespace App\Models;

use illuminate\Database\Eloquent\Model;

Class Depoimento extends Model{

    protected $table = 'tbl_depoimento';
    protected $primaryKey = 'id_depoimento';
    public $timestamps = true;

    const CREATE_AT = 'data_criacao_depoimento';
    const UPDATED_AT = 'data_atualizacao_depoimento';

    protected $fillable = [
        'id_cliente',
        'titulo_depoimento',
        'descricao_depoimento',
        'nota_depoimento',
        'status_depoimento'
    ];

    // Um cliente pode possuir muitos depoimentos
    public function DepoimentoCliente(){
        return$this->belongsTo(Cliente::class, 'id_cliente', 'id_cliente');
    }
}