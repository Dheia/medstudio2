<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsTableRow extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_table_row', function($table)
        {
            $table->string('table_slug')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_table_row', function($table)
        {
            $table->dropColumn('table_slug');
        });
    }
}
