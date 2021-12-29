<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsRating7 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_rating', function($table)
        {
            $table->dropColumn('size');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_rating', function($table)
        {
            $table->smallInteger('size')->default(0);
        });
    }
}
