<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsContent2 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_content', function($table)
        {
            $table->binary('no_bottom_space');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_content', function($table)
        {
            $table->dropColumn('no_bottom_space');
        });
    }
}
