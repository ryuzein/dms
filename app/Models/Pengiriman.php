<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Pengiriman extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'kode',
        'ritase',
        'foto_suratjalan',
        'cabang_id',
        'employee_id',
        'kendaraan_id',
        'brand_id',
        'muatan_id',
        'jumlahmuatan_b',
        'fotomuatan_b',
        'fotokm_b',
        'waktu_berangkat',
        'status',
    ];
    public function cabang(): BelongsTo
    {
        return $this->belongsTo(Cabang::class);
    }
    public function employee(): BelongsTo
    {
        return $this->belongsTo(Employee::class);
    }
    public function kendaraan(): BelongsTo
    {
        return $this->belongsTo(Kendaraan::class);
    }
    public function brand(): BelongsTo
    {
        return $this->belongsTo(Brand::class);
    }
    public function muatan(): BelongsTo
    {
        return $this->belongsTo(Muatan::class);
    }
}
