<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsFeadback2 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_feadback', function($table)
        {
            $table->string('rating_description')->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_feadback', function($table)
        {
            $table->text('rating_description')->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
}
