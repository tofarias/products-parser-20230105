<?php

namespace OpenFoodFacts\Models;

use MongoDB\Laravel\Eloquent\Model;

class Product extends Model
{
    protected $connection = 'mongodb';

    protected $guarded = [
        'id'
    ];
}