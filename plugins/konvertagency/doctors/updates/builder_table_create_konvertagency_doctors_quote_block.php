<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsQuoteBlock extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_quote_block', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title')->nullable();
            $table->text('txt');
            $table->string('url')->nullable();
            $table->string('imgmedia')->nullable();
            $table->string('description')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_quote_block');
    }
}
