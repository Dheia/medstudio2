<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsAccordionListWorks3 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_accordion_list_works', function($table)
        {
            $table->string('img_title')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_accordion_list_works', function($table)
        {
            $table->dropColumn('img_title');
        });
    }
}
