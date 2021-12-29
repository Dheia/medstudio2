<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsSampleWorks extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_sample_works_', function($table)
        {
            $table->string('link');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_sample_works_', function($table)
        {
            $table->dropColumn('link');
        });
    }
}
