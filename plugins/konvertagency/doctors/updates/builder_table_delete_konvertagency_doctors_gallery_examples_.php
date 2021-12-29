<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableDeleteKonvertagencyDoctorsGalleryExamples extends Migration
{
    public function up()
    {
        Schema::dropIfExists('konvertagency_doctors_gallery_examples_');
    }
    
    public function down()
    {
        Schema::create('konvertagency_doctors_gallery_examples_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('action')->nullable()->default(0);
            $table->integer('id_from_base');
            $table->integer('sort')->nullable();
            $table->string('title', 191);
        });
    }
}
