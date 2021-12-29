<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsTableRow2 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_table_row', function($table)
        {
            $table->renameColumn('table_slug', 'table_id');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_table_row', function($table)
        {
            $table->renameColumn('table_id', 'table_slug');
        });
    }
}
