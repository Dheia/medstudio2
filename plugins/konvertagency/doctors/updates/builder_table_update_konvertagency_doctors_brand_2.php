<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsBrand2 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_brand', function($table)
        {
            $table->renameColumn('country_id', 'country');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_brand', function($table)
        {
            $table->renameColumn('country', 'country_id');
        });
    }
}
