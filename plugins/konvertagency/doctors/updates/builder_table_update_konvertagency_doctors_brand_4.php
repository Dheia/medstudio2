<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsBrand4 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_brand', function($table)
        {
            $table->dropColumn('name_id');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_brand', function($table)
        {
            $table->string('name_id', 191);
        });
    }
}
