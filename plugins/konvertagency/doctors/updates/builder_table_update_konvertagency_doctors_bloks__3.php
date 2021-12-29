<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsBloks3 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_bloks_', function($table)
        {
            $table->string('title', 191)->nullable()->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_bloks_', function($table)
        {
            $table->string('title', 191)->nullable(false)->change();
        });
    }
}
