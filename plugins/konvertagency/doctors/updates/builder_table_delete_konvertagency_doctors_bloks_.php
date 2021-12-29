<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableDeleteKonvertagencyDoctorsBloks extends Migration
{
    public function up()
    {
        Schema::dropIfExists('konvertagency_doctors_bloks_');
    }
    
    public function down()
    {
        Schema::create('konvertagency_doctors_bloks_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('description', 191)->nullable();
            $table->string('from_base', 191)->nullable();
            $table->integer('id_from_base')->nullable();
            $table->boolean('public')->default(1);
            $table->integer('sort')->nullable();
            $table->string('title', 191)->nullable();
            $table->string('url', 191)->nullable();
        });
    }
}
