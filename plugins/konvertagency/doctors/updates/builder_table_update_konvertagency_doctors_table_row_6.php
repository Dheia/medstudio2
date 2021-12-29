<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsTableRow6 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_table_row', function($table)
        {
            $table->text('article')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_table_row', function($table)
        {
            $table->dropColumn('article');
        });
    }
}
