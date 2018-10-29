<?php

namespace App\Exceptions\Traits;

use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpKernel\Exception\HttpException;
use Illuminate\Validation\ValidationException;

trait ApiException{

	//Trata excecoes da api
	protected function getJsonException($request, $e)
	{
		if($e instanceof ModelNotFoundException){
			return $this->notFoundException();
		}

		if($e instanceof HttpException){
			return $this->httpException($e);
		}

		if($e instanceof ValidationException){
			return $this->validationException($e);
		}

		return $this->genericException();

	}


	//Retorna de validação
	protected function validationException($e){

		return response()->json($e->errors(), $e->status);

	}


	//Retorna de http
	protected function httpException($e){

		$messages = [
			405 => ["code"=>"03", "message"=>"Verbo http não permitido"],
			403 => ["code"=>"04", "message"=>"Acesso não permitido"]
		];

		return $this->getResponse(
			$messages[$e->getStatusCode()]["message"],
			$messages[$e->getStatusCode()]["code"],
			$e->getStatusCode()
		);
	}

	//Retorna 500
	protected function genericException(){
		return $this->getResponse("Erro interno no servidor", "02", 500);
	}

	//Retorna 404
	protected function notFoundException(){
		return $this->getResponse("O recurso não foi encontrado", "01", 404);
	}


	//Monta a resposta em Json
	protected function getResponse($message, $code, $status){

		return response()->json([
            "errors"=>[
                [
                    "status"=>$status,
                    "code"=>$code,
                    "message"=>$message
                ]
            ]
        ], $status);

	}




}
