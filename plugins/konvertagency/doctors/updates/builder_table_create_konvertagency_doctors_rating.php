<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsRating extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_rating', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('stars')->unsigned()->default(10);
            $table->text('txt');
            $table->decimal('rating', 10, 0);
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_rating');
    }
}
