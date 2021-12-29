<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsBloks extends Migration
{
    public function up()
    {
        Schema::rename('konvertagency_doctors_bloks', 'konvertagency_doctors_bloks_');
    }
    
    public function down()
    {
        Schema::rename('konvertagency_doctors_bloks_', 'konvertagency_doctors_bloks');
    }
}
