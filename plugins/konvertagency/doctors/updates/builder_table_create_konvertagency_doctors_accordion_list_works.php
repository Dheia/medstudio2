<?php namespace KonvertAgency\Doctors\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateKonvertagencyDoctorsAccordionListWorks extends Migration
{
    public function up()
    {
        Schema::create('konvertagency_doctors_accordion_list_works', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('title');
            $table->string('sub_title')->nullable();
            $table->string('total')->nullable();
            $table->smallInteger('per_row')->nullable()->default(1);
            $table->boolean('open_all')->default(0);
            $table->text('repeater')->nullable();
            $table->string('description')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('konvertagency_doctors_accordion_list_works');
    }
}
