<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsBloks extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_bloks', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('url');
            $table->string('from_base');
            $table->integer('id_from_base');
            $table->integer('sort')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_bloks');
    }
}
