<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctors5 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_', function($table)
        {
            $table->string('view_page')->default('all');
            $table->smallInteger('start_year_work')->default(null)->change();
            $table->string('specialities', 255)->default('null')->change();
            $table->string('specialization', 255)->default('null')->change();
            $table->text('description')->default('null')->change();
            $table->string('slug', 191)->default('null')->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_', function($table)
        {
            $table->dropColumn('view_page');
            $table->smallInteger('start_year_work')->default(NULL)->change();
            $table->string('specialities', 255)->default('\'null\'')->change();
            $table->string('specialization', 255)->default('\'null\'')->change();
            $table->text('description')->default('NULL')->change();
            $table->string('slug', 191)->default('NULL')->change();
        });
    }
}
