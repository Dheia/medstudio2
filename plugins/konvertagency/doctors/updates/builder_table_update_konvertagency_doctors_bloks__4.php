<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsBloks4 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_bloks_', function($table)
        {
            $table->string('description');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_bloks_', function($table)
        {
            $table->dropColumn('description');
        });
    }
}
