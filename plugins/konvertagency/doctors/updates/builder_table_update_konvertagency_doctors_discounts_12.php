<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsDiscounts12 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_discounts', function($table)
        {
            $table->string('banner_btn')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_discounts', function($table)
        {
            $table->dropColumn('banner_btn');
        });
    }
}
