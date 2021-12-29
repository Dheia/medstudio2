<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsTable3 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_table', function($table)
        {
            $table->string('class')->nullable();
            $table->integer('visible_row')->nullable()->unsigned();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_table', function($table)
        {
            $table->dropColumn('class');
            $table->dropColumn('visible_row');
        });
    }
}
