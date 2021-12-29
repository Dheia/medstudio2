<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsDiscounts extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_discounts', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title')->nullable();
            $table->integer('price_current')->unsigned();
            $table->integer('price_old')->nullable()->unsigned();
            $table->text('txt_promotions')->nullable();
            $table->string('txt_btn')->nullable();
            $table->string('slug');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_discounts');
    }
}
