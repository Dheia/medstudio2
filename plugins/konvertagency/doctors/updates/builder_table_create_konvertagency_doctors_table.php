<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsTable extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_table', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title')->nullable();
            $table->string('table_slug')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_table');
    }
}
