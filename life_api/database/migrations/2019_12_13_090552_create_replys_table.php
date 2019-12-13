<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReplysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('replys', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('comment_id');
            $table->integer('reply_id');
            $table->integer('reply_type');
            $table->text('content');
            $table->integer('from_user_id');
            $table->integer('to_user_id');
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
        Schema::dropIfExists('replys');
    }
}
