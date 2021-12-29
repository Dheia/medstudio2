<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsDiscounts3 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_discounts', function($table)
        {
            $table->boolean('auto_date')->default(1);
            $table->boolean('date_on')->default(1);
            $table->date('date')->nullable();
            $table->string('txt_title');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_discounts', function($table)
        {
            $table->dropColumn('auto_date');
            $table->dropColumn('date_on');
            $table->dropColumn('date');
            $table->dropColumn('txt_title');
        });
    }
}
