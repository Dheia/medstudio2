<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsGalleries2 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_galleries', function($table)
        {
            $table->smallInteger('size')->default(0);
            $table->string('class')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_galleries', function($table)
        {
            $table->dropColumn('size');
            $table->dropColumn('class');
        });
    }
}
