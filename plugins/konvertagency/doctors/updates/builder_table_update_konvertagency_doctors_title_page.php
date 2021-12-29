<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsTitlePage extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_title_page', function($table)
        {
            $table->smallInteger('position_bg')->default(0);
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_title_page', function($table)
        {
            $table->dropColumn('position_bg');
        });
    }
}
