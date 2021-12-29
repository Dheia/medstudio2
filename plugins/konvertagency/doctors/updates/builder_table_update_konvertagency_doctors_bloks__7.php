<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsBloks7 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_bloks_', function($table)
        {
            $table->string('url', 191)->nullable()->change();
            $table->string('from_base', 191)->nullable()->change();
            $table->integer('id_from_base')->nullable()->change();
            $table->integer('sort')->nullable()->change();
            $table->string('description', 191)->nullable()->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_bloks_', function($table)
        {
            $table->string('url', 191)->nullable(false)->change();
            $table->string('from_base', 191)->nullable(false)->change();
            $table->integer('id_from_base')->nullable(false)->change();
            $table->integer('sort')->nullable(false)->change();
            $table->string('description', 191)->nullable(false)->change();
        });
    }
}
