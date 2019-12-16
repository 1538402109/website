<?php

namespace App\Http\Controllers\API;

use App\CommunityNew;
use App\Footer;
use App\Menu;
use App\Notice;
use Illuminate\Http\Request;
use App\Http\Controllers\API\CommonController;

class IndexController extends CommonController
{
    public function navMenu()
    {
        $data = Menu::where('active',0)->get()->toArray();
        return $this->success(200, "请求成功", $data);
    }

    public function notice()
    {
        $data = Notice::select('title','author','content')
            ->orderBy('updated_at', 'desc')
            ->limit(1)
            ->get()
            ->toArray();
        return $this->success(200, "请求成功", $data);
    }

    public function indexNews()
    {
        $data = CommunityNew::where('category_id',1)
            ->where('news_type',0)
            ->orderBy('updated_at', 'desc')
            ->limit(10)
            ->get()
            ->toArray();
        return $this->success(200, "请求成功", $data);
    }

    public function CircleNews()
    {
        $data = CommunityNew::where('category_id',2)
            ->where('news_type',0)
            ->orderBy('updated_at', 'desc')
            ->limit(2)
            ->get()
            ->toArray();
        return $this->success(200, "请求成功", $data);
    }

    public function PartnerNews()
    {
        $data = CommunityNew::where('category_id',3)
            ->where('news_type',0)
            ->orderBy('updated_at', 'desc')
            ->limit(3)
            ->get()
            ->toArray();
        return $this->success(200, "请求成功", $data);
    }

    public function footer()
    {
        $data = $this->tree();
        return $this->success(200,"请求成功",$data);
    }
    public function tree($cate_pid=0)
    {
        $category =Footer::where('active',0)->where('parent_id',$cate_pid)->get();  //第一次做的时候get()后面加了toArray()，页面遍历数据时报错遍历的不是对象，去掉后可行

        $arr = array();
        if (sizeof($category) !=0){
            foreach ($category as $k =>$datum) {
                $datum['list'] = $this->tree($datum['id']);
                $arr[]=$datum;
            }
        }
        return $arr;
    }
}
