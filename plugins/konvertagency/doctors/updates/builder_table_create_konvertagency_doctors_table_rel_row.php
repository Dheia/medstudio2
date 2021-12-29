<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsTableRelRow extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_table_rel_row', function($table)
        {
            $table->engine = 'InnoDB';
            $table->integer('table_id');
            $table->integer('row_id');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_table_rel_row');
    }
}
