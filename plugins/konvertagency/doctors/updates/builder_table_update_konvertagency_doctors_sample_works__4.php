<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsSampleWorks4 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_sample_works_', function($table)
        {
            $table->integer('action')->default(0)->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_sample_works_', function($table)
        {
            $table->integer('action')->default(null)->change();
        });
    }
}
