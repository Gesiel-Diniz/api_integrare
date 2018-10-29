<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ClientProduct extends Model
{
	protected $fillable = ['client_id', 'product_id', 'quantity', 'date', 'unit_price', 'total'];

    /*Mapeamento de relacionamento com a tabela clients_products*/
    public function client(){
    	return $this->belongsTo('App\Models\Client');
    }

    /*Mapeamento de relacionamento com a tabela products*/
    public function Product(){
    	return $this->belongsTo('App\Models\Product');
    }
}
