<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsTableRow7 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_table_row', function($table)
        {
            $table->integer('sort_order')->nullable();
            $table->integer('parent_id')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_table_row', function($table)
        {
            $table->dropColumn('sort');
        });
    }
}
