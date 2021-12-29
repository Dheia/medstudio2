<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsEtaps extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_etaps', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('slug')->unique();
            $table->string('title')->nullable();
            $table->string('desc')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_etaps');
    }
}
