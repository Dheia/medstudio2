<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsSampleWorks extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_sample_works_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_sample_works_');
    }
}
