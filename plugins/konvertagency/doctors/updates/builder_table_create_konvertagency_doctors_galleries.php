<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsGalleries extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_galleries', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->smallInteger('action')->default(0);
            $table->string('description')->nullable();
            $table->string('gallerie_title');
            $table->boolean('pagination')->default(0);
            $table->smallInteger('pcs')->nullable()->default(4);
            $table->string('slug_gallerie')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_galleries');
    }
}
