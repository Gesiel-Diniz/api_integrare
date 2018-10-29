<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Client extends Model
{
	/*Indica os atributos disponiveis para serem salvos*/
	protected $fillable = ['name', 'address', 'email'];

	// /*Faz conversão de dados, tipo alterar ordem da data*/
	// protected $casts = [];

	// /*Define atributos para serem ocultados na consulta*/
	// //protected $hidden = ['created_at', 'updated_at'];

	// /*Define atributos que devem ser visiveis na consulta*/
	// protected $visible = ['name', 'address', 'email', 'is_accepted'];

	// /*Define atributos dinamicos anexos*/
	// protected $appends = ['is_accepted'];

    /*Mapeamento de relacionamento com a tabela client_product*/
    public function clientProduct(){
    	return $this->hasMany('App\Models\ClientProduct');
    }

 //    /*Cria um acessor no model 'is_accepted'*/
	// public function getIsAcceptedAttribute(){
	// 	return $this->attributes['email'] != '' ? 'aceito' : 'não aceito';
	// }

}
