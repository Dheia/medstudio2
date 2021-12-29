<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsFaq extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_faq', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('faq_slug');
            $table->string('title')->nullable();
            $table->string('class')->nullable();
            $table->string('description')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_faq');
    }
}
