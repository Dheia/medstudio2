<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsTable6 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_table', function($table)
        {
            $table->string('description', 191)->nullable()->change();
            $table->boolean('visible_pcs')->nullable()->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_table', function($table)
        {
            $table->string('description', 191)->nullable(false)->change();
            $table->boolean('visible_pcs')->nullable(false)->change();
        });
    }
}
