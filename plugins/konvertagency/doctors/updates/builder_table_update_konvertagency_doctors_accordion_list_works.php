<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsAccordionListWorks extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_accordion_list_works', function($table)
        {
            $table->timestamp('deleted_at');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_accordion_list_works', function($table)
        {
            $table->dropColumn('deleted_at');
        });
    }
}