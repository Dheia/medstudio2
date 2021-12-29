<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsBloks5 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_bloks_', function($table)
        {
            $table->boolean('public')->default(1);
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_bloks_', function($table)
        {
            $table->dropColumn('public');
        });
    }
}
