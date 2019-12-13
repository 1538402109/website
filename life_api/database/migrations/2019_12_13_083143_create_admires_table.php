<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAdmiresTable extends Migration
{
    /**
     * Run the migrations.
     *点赞表
     * @return void
     */
    public function up()
    {
        Schema::create('admires', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id');
            $table->integer('type_id')->nullable()->comment('对应的作品或评论的id');
            $table->tinyInteger('status')->nullable();
            $table->tinyInteger('type')->nullable()->comment('点赞类型  1作品点赞  2 评论点赞 ');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('admires');
    }
}
