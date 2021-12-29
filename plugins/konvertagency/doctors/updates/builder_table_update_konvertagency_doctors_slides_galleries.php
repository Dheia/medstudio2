<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsSlidesGalleries extends Migration
{
    public function up()
    {
        Schema::rename('konvertagency_doctors_slides_gall', 'konvertagency_doctors_slides_galleries');
    }
    
    public function down()
    {
        Schema::rename('konvertagency_doctors_slides_galleries', 'konvertagency_doctors_slides_gall');
    }
}
