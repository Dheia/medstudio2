<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsRating extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_rating', function($table)
        {
            $table->string('txt', 100)->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_rating', function($table)
        {
            $table->text('txt')->nullable(false)->unsigned(false)->default(null)->change();
        });
    }
}
