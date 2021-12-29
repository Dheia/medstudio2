<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsTable extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_table', function($table)
        {
            $table->integer('table_id')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_table', function($table)
        {
            $table->dropColumn('table_id');
        });
    }
}
