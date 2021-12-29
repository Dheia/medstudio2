<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsContent extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_content', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title')->nullable();
            $table->string('description');
            $table->text('text');
            $table->smallInteger('img_position')->default(1);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_content');
    }
}
