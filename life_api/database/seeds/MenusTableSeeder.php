<?php

use Illuminate\Database\Seeder;
use App\Menu;
class MenusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Menu::create([
            "name" => "和声社区",
            "url" => "/index",
            "active" => 0,
        ]);
        Menu::create([
            "name" => "观致圈儿",
            "url" => "/circle",
            "active" => 0,
        ]);
        Menu::create([
            "name" => "观致伙伴",
            "url" => "/partner",
            "active" => 0,
        ]);
        Menu::create([
            "name" => "技术交流",
            "url" => "/technical",
            "active" => 0,
        ]);
        Menu::create([
            "name" => "观致生活",
            "url" => "/life",
            "active" => 0,
        ]);
        Menu::create([
            "name" => "下载天地",
            "url" => "/download",
            "active" => 0,
        ]);
    }
}
