<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsSampleWorks3 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_sample_works_', function($table)
        {
            $table->integer('action')->nullable();
            $table->string('link', 191)->nullable()->change();
            $table->string('view_in_page', 191)->nullable()->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_sample_works_', function($table)
        {
            $table->dropColumn('action');
            $table->string('link', 191)->nullable(false)->change();
            $table->string('view_in_page', 191)->nullable(false)->change();
        });
    }
}
