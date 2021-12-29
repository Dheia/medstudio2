<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsFaqRow extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_faq_row', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('faq_slug');
            $table->string('question')->nullable();
            $table->text('answer')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_faq_row');
    }
}
