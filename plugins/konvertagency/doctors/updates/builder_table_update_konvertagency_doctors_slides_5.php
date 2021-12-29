<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsSlides5 extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_slides', function($table)
        {
            $table->renameColumn('slug_gallerie', 'description');
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_slides', function($table)
        {
            $table->renameColumn('description', 'slug_gallerie');
        });
    }
}
