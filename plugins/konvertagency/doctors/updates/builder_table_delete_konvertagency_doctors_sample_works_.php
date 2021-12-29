<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableDeleteKonvertagencyDoctorsSampleWorks extends Migration
{
    public function up()
    {
        Schema::dropIfExists('konvertagency_doctors_sample_works_');
    }
    
    public function down()
    {
        Schema::create('konvertagency_doctors_sample_works_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('action')->nullable()->default(0);
            $table->string('link', 191)->nullable();
            $table->string('title', 191);
            $table->string('view_in_page', 191)->nullable();
        });
    }
}
