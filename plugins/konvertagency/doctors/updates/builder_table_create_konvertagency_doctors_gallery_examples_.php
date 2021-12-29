<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsGalleryExamples extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_gallery_examples_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title');
            $table->integer('id_from_base');
            $table->integer('sort')->nullable();
            $table->integer('action')->nullable()->default(0);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_gallery_examples_');
    }
}
