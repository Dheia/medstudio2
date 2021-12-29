<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsGalleries extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_galleries', function($table)
        {
            $table->boolean('pagination_mobile')->default(0);
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_galleries', function($table)
        {
            $table->dropColumn('pagination_mobile');
        });
    }
}
