<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsCountry2 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_country', function($table)
        {
            $table->renameColumn('country_id', 'name');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_country', function($table)
        {
            $table->renameColumn('name', 'country_id');
        });
    }
}
