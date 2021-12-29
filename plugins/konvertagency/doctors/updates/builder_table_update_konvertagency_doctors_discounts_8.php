<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsDiscounts8 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_discounts', function($table)
        {
            $table->integer('price_current')->nullable()->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_discounts', function($table)
        {
            $table->integer('price_current')->nullable(false)->change();
        });
    }
}
