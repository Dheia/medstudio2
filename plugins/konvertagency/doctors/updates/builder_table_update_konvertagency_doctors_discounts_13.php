<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsDiscounts13 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_discounts', function($table)
        {
            $table->text('banner_custom_txt')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_discounts', function($table)
        {
            $table->dropColumn('banner_custom_txt');
        });
    }
}
