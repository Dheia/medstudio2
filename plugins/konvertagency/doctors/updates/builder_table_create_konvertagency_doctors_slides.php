<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsSlides extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_slides', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('link')->nullable();
            $table->string('slide_title');
            $table->string('slug_gallerie')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_slides');
    }
}
