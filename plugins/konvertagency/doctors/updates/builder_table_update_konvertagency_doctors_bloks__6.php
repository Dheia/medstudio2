<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsBloks6 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_bloks_', function($table)
        {
            $table->integer('sort')->nullable(false)->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_bloks_', function($table)
        {
            $table->integer('sort')->nullable()->change();
        });
    }
}
