<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsFeadback3 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_feadback', function($table)
        {
            $table->string('rating_description', 191)->nullable()->change();
            $table->dropColumn('agregator');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_feadback', function($table)
        {
            $table->string('rating_description', 191)->nullable(false)->change();
            $table->string('agregator', 191);
        });
    }
}
