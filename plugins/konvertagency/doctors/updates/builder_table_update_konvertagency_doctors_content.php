<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsContent extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_content', function($table)
        {
            $table->smallInteger('img_position')->default(0)->change();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_content', function($table)
        {
            $table->smallInteger('img_position')->default(1)->change();
        });
    }
}
