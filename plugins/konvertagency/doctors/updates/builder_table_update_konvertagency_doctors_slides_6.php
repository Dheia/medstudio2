<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsSlides6 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_slides', function($table)
        {
            $table->integer('position')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_slides', function($table)
        {
            $table->dropColumn('position');
        });
    }
}
