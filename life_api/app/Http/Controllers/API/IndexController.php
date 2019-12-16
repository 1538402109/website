<?php

namespace App\Http\Controllers\API;

use App\Menu;
use Illuminate\Http\Request;
use App\Http\Controllers\API\CommonController;

class IndexController extends CommonController
{
    public function index()
    {
        $data = Menu::all()->toArray();
        return $this->success(200, "请求成功", $data);
    }
}
