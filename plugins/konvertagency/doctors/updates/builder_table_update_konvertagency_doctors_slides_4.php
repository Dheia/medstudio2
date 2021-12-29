<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsSlides4 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_slides', function($table)
        {
            $table->renameColumn('brabd', 'brand');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_slides', function($table)
        {
            $table->renameColumn('brand', 'brabd');
        });
    }
}
