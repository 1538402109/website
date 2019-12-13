<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommunityNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('community_news', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title',100)->nullable();
            $table->string('author',50)->nullable();
            $table->text('content')->nullable();
            $table->string('key_words',200)->nullable();
            $table->integer('category_id')->nullable();
            $table->integer('read_count')->nullable();
            $table->integer('admire_count')->nullable();
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
        Schema::dropIfExists('community_news');
    }
}
