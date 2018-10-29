<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/clients', 'ClientsController@index');
Route::get('/clients/{client}', 'ClientsController@show');
Route::post('/clients', 'ClientsController@store');
Route::put('/clients/{client}', 'ClientsController@update');
Route::delete('/clients/{client}', 'ClientsController@destroy');

Route::get('/products', 'ProductsController@index');
Route::get('/products/{product}', 'ProductsController@show');
Route::post('/products', 'ProductsController@store');
Route::put('/products/{product}', 'ProductsController@update');
Route::delete('/products/{product}', 'ProductsController@destroy');

Route::get('/vendas', 'ClientsProductsController@index');
Route::get('/vendas/{venda}', 'ClientsProductsController@show');
Route::post('/vendas', 'ClientsProductsController@store');
Route::put('/vendas/{venda}', 'ClientsProductsController@update');
Route::delete('/vendas/{venda}', 'ClientsProductsController@destroy');
Route::delete('/vendas/all/{venda}', 'ClientsProductsController@destroyAll');
