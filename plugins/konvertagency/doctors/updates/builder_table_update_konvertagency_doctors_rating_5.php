<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsRating5 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_rating', function($table)
        {
            $table->dropColumn('pcs');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_rating', function($table)
        {
            $table->integer('pcs')->unsigned()->default(4);
        });
    }
}
