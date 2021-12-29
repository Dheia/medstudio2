<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsSlides2 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_slides', function($table)
        {
            $table->string('price')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_slides', function($table)
        {
            $table->dropColumn('price');
        });
    }
}
