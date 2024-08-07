<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('suppliers', function (Blueprint $table) {
            $table->id();
            $table->string('ekspedisi');
            $table->foreignId('cabang_id')->constrained('cabangs')->cascadeOnDelete();
            $table->string('kendaraan');
            $table->string('plat');
            $table->string('employee');
            $table->string('foto_suratjaland');
            $table->string('foto_muatand');
            $table->string('foto_kmd');
            $table->string('brand');
            $table->string('muatan');
            $table->string('jumlahd');
            $table->string('waktudatang');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('suppliers');
    }
};
