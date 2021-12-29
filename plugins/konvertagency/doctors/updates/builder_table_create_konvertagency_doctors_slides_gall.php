<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsSlidesGall extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_slides_gall', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('slide_id');
            $table->integer('gallerie_id');
            $table->primary(['slide_id','gallerie_id']);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_slides_gall');
    }
}
