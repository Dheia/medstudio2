<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsTable5 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_table', function($table)
        {
            $table->string('description');
            $table->string('table_slug', 191)->nullable(false)->default('null')->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_table', function($table)
        {
            $table->dropColumn('description');
            $table->string('table_slug', 191)->nullable()->default(null)->change();
        });
    }
}
