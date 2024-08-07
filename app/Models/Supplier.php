<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    use HasFactory;

            protected $fillable = [
                'ekspedisi',
                'kendaraan',
                'employee',
                'foto_suratjaland',
                'foto_muatand',
                'foto_kmd',
                'brand',
                'cabang_id',
                'muatan',
                'jumlahd',
                'waktudatang',
            ];
}
