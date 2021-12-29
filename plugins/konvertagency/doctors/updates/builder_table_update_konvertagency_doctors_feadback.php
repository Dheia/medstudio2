<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsFeadback extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_feadback', function($table)
        {
            $table->string('agregator');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_feadback', function($table)
        {
            $table->dropColumn('agregator');
        });
    }
}
