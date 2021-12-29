<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsEtap extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_etap', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->integer('block_etaps_id');
            $table->string('title');
            $table->string('sub_title')->nullable();
            $table->text('txt')->nullable();
            $table->integer('sort_order')->nullable();
            $table->timestamp('deleted_at')->nullable();
            $table->integer('parent_id')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_etap');
    }
}
