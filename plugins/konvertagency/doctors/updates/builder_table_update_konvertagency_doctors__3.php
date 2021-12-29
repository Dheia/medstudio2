<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctors3 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_', function($table)
        {
            $table->smallInteger('start_year_work')->nullable()->default(null)->change();
            $table->string('specialities', 255)->default('null')->change();
            $table->string('specialization', 255)->default('null')->change();
            $table->text('description')->default('null')->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_', function($table)
        {
            $table->smallInteger('start_year_work')->nullable(false)->default(1950)->change();
            $table->string('specialities', 255)->default('\'null\'')->change();
            $table->string('specialization', 255)->default('\'null\'')->change();
            $table->text('description')->default('NULL')->change();
        });
    }
}
