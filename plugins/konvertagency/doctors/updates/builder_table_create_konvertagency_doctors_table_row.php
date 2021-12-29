<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsTableRow extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_table_row', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->text('nomination')->nullable();
            $table->string('pcs')->nullable();
            $table->string('price')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_table_row');
    }
}
