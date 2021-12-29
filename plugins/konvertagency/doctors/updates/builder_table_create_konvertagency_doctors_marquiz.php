<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsMarquiz extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_marquiz', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('slug')->unique();
            $table->string('title')->nullable();
            $table->text('txt')->nullable();
            $table->string('date')->nullable();
            $table->boolean('auto_date');
            $table->string('txt_slogan')->nullable();
            $table->text('repeater')->nullable();
            $table->string('id_marquiz_site')->nullable();
            $table->string('txt_btn')->nullable();
            $table->integer('per_row')->default(1);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_marquiz');
    }
}
