<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateKonvertagencyDoctorsQuoteBlock extends Migration
{
    public function up()
    {
        Schema::table('konvertagency_doctors_quote_block', function($table)
        {
            $table->string('name')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('konvertagency_doctors_quote_block', function($table)
        {
            $table->dropColumn('name');
        });
    }
}
