<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ClientProduct extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id'=>$this->id,
            'quantity'=>$this->quantity,
            'date'=>$this->date,
            'unit_price'=>$this->unit_price,
            'total'=>$this->total,
            'client'=>$this->client,
            'product'=>$this->product
        ];
    }
}