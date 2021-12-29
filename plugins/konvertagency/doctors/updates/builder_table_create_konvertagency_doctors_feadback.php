<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsFeadback extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_feadback', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('name')->nullable();
            $table->text('feadback_txt');
            $table->string('feadback_for')->nullable();
            $table->string('feadback_url')->nullable();
            $table->text('rating_description');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_feadback');
    }
}
