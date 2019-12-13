<?php

use Illuminate\Database\Seeder;
use App\Footer;
class FootersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Footer::create([
            "name" => "观致圈儿",
            "url" => "/circle",
            "active" => 0,
            "parent_id"=> 0
        ]);
        Footer::create([
            "name" => "观致动态",
            "url" => "/dynamic",
            "active" => 0,
            "parent_id"=> 1
        ]);
        Footer::create([
            "name" => "管理技术动态",
            "url" => "/managerTech",
            "active" => 0,
            "parent_id"=> 1
        ]);
        Footer::create([
            "name" => "公告",
            "url" => "/notice",
            "active" => 0,
            "parent_id"=> 1
        ]);
        Footer::create([
            "name" => "观致伙伴",
            "url" => "/partner",
            "active" => 0,
            "parent_id"=> 0
        ]);
        Footer::create([
            "name" => "观致人",
            "url" => "/person",
            "active" => 0,
            "parent_id"=> 5
        ]);
        Footer::create([
            "name" => "点赞祝福",
            "url" => "/blessing",
            "active" => 0,
            "parent_id"=> 5
        ]);
        Footer::create([
            "name" => "观致风采",
            "url" => "/elegant",
            "active" => 0,
            "parent_id"=> 5
        ]);
        Footer::create([
            "name" => "管理技术交流",
            "url" => "/technical",
            "active" => 0,
            "parent_id"=> 0
        ]);
        Footer::create([
            "name" => "思想分享",
            "url" => "/thought",
            "active" => 0,
            "parent_id"=> 9
        ]);
        Footer::create([
            "name" => "技术分享",
            "url" => "/techShare",
            "active" => 0,
            "parent_id"=> 9
        ]);
        Footer::create([
            "name" => "观生活",
            "url" => "/life",
            "active" => 0,
            "parent_id"=> 0
        ]);
        Footer::create([
            "name" => "协会天地",
            "url" => "/association",
            "active" => 0,
            "parent_id"=> 12
        ]);
        Footer::create([
            "name" => "脱单区",
            "url" => "/single",
            "active" => 0,
            "parent_id"=> 12
        ]);
        Footer::create([
            "name" => "跳蚤市场",
            "url" => "/market",
            "active" => 0,
            "parent_id"=> 12
        ]);
        Footer::create([
            "name" => "学习分享",
            "url" => "/study",
            "active" => 0,
            "parent_id"=> 12
        ]);

        Footer::create([
            "name" => "关于和声社区",
            "url" => "/index",
            "active" => 0,
            "parent_id"=> 0
        ]);
        Footer::create([
            "name" => "管理规定",
            "url" => "/stipulation",
            "active" => 0,
            "parent_id"=> 17
        ]);
        Footer::create([
            "name" => "隐私声明",
            "url" => "/privacy ",
            "active" => 0,
            "parent_id"=> 17
        ]);
        Footer::create([
            "name" => "联系我们",
            "url" => "/contactUs",
            "active" => 0,
            "parent_id"=> 17
        ]);
    }
}
