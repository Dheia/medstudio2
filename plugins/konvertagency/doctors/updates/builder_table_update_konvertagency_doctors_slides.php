<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsSlides extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_slides', function($table)
        {
            $table->string('properties_title')->nullable();
            $table->string('properties_1')->nullable();
            $table->string('properties_2')->nullable();
            $table->string('properties_3')->nullable();
            $table->string('properties_4')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_slides', function($table)
        {
            $table->dropColumn('properties_title');
            $table->dropColumn('properties_1');
            $table->dropColumn('properties_2');
            $table->dropColumn('properties_3');
            $table->dropColumn('properties_4');
        });
    }
}
