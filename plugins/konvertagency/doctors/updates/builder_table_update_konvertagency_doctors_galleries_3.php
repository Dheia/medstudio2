<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsGalleries3 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_galleries', function($table)
        {
            $table->boolean('slide_title_position')->default(0);
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_galleries', function($table)
        {
            $table->dropColumn('slide_title_position');
        });
    }
}
