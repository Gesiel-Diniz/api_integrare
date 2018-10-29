<?php

namespace App\Http\Controllers;

use App\Models\ClientProduct;
use Illuminate\Http\Request;
use App\Http\Requests\ClientProductRequest;
use App\Http\Resources\ClientProduct as ClientProductResource;
use App\Http\Resources\ClientsProducts as ClientProductCollection;

class ClientsProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$clientProduct = ClientProduct::selectRaw('count(*) AS cli, client_id')->groupBy('client_id')->orderBy('cli', 'DESC')->get();
        return (new ClientProductCollection($clientProduct))->response()->setStatusCode(200);
    }


    public function store(ClientProductRequest $request)
    {
        return ClientProduct::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
		$clientProduct = ClientProduct::query()->select('*')->whereIn('client_id', array("client_id"=> $id))->get();
        return (new ClientProductCollection($clientProduct))->response()->setStatusCode(200);
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
    	$clientProduct = ClientProduct::find($id);
		$clientProduct->delete();
        return [];
    }


    public function destroyAll($id)
    {
    	$clientProduct = ClientProduct::query()->select('*')->whereIn('client_id', array("client_id"=> $id))->get();

    	foreach ($clientProduct as $value) {
    		$value->delete();
    	}

        return [];
    }

}

