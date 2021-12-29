<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsDiscounts4 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_discounts', function($table)
        {
            $table->integer('sort_order')->default(0);
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_discounts', function($table)
        {
            $table->dropColumn('sort_order');
        });
    }
}
