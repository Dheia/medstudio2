<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsBrand5 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_brand', function($table)
        {
            $table->renameColumn('name', 'name_brand');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_brand', function($table)
        {
            $table->renameColumn('name_brand', 'name');
        });
    }
}
