<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsGalleries5 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_galleries', function($table)
        {
            $table->dropColumn('type');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_galleries', function($table)
        {
            $table->smallInteger('type')->nullable()->unsigned()->default(0);
        });
    }
}
