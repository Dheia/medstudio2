<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableDeleteKonvertagencyDoctorsSlidesGalleries extends Migration
{
    public function up()
    {
        Schema::dropIfExists('konvertagency_doctors_slides_galleries');
    }
    
    public function down()
    {
        Schema::create('konvertagency_doctors_slides_galleries', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('galleries_id');
            $table->integer('slides_id');
        });
    }
}
