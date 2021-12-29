<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctors extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->smallInteger('rating');
            $table->string('name');
            $table->string('last_name');
            $table->string('patronymic');
            $table->smallInteger('start_year_work')->nullable();
            $table->string('specialities')->nullable();
            $table->string('specialization')->nullable();
            $table->text('description')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_');
    }
}
