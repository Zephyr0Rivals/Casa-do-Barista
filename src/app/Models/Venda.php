<?php


namespace App\Models;


use Illuminate\Database\Eloquent\Model;


Class Venda extends Model{

    protected $table = 'tbl_venda';
    protected $primaryKey = 'id_venda';

    public $timestamps = false;

    protected $fillable = [
        'data_hora_venda',
        'valor_total_venda',
        'forma_pagamento_venda',
        'id_cliente',
        'status_venda',
        'observacao_venda',
        
    ];

    // Um cliente pode possuir muitas vendas
    public function VendaCliente(){
        return$this->belongsTo(Cliente::class, 'id_cliente', 'id_cliente');
    }
}

