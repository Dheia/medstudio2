<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctors extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_', function($table)
        {
            $table->string('name', 255)->change();
            $table->string('last_name', 255)->change();
            $table->string('patronymic', 255)->change();
            $table->smallInteger('start_year_work')->nullable(false)->default(null)->change();
            $table->string('specialities', 255)->default('null')->change();
            $table->string('specialization', 255)->default('null')->change();
            $table->text('description')->default('null')->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_', function($table)
        {
            $table->string('name', 191)->change();
            $table->string('last_name', 191)->change();
            $table->string('patronymic', 191)->change();
            $table->smallInteger('start_year_work')->nullable()->default(NULL)->change();
            $table->string('specialities', 191)->default('NULL')->change();
            $table->string('specialization', 191)->default('NULL')->change();
            $table->text('description')->default('NULL')->change();
        });
    }
}