<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
	protected $fillable = ['name', 'description'];

	/*Mapeamento de relacionamento com a tabela client_product*/
    public function clientProduct(){
    	return $this->hasMany('App\Models\ClientProduct');
    }
}
