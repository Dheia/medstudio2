<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsTable7 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_table', function($table)
        {
            $table->integer('order')->nullable()->unsigned();
            $table->smallInteger('type')->nullable()->unsigned();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_table', function($table)
        {
            $table->dropColumn('order');
            $table->dropColumn('type');
        });
    }
}
