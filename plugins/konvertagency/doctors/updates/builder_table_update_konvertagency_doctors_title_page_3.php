<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsTitlePage3 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_title_page', function($table)
        {
            $table->string('btn_appointment')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_title_page', function($table)
        {
            $table->dropColumn('btn_appointment');
        });
    }
}
