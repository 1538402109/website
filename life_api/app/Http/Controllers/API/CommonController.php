<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CommonController extends Controller
{
    public function __construct()
    {
    }

    public function success($code = '', $message = '', $data = '')
    {
        return ["code" => $code, "message" => $message, "data" => $data];
    }
}
