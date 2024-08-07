<?php

namespace App\Filament\Resources\MuatanResource\Pages;

use App\Filament\Resources\MuatanResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditMuatan extends EditRecord
{
    protected static string $resource = MuatanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
