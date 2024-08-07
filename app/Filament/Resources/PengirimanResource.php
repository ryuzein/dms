<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PengirimanResource\Pages;
use App\Filament\Resources\PengirimanResource\RelationManagers;
use App\Models\Pengiriman;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Tables\Columns\ImageColumn;
use Filament\Forms\Components\TextInput;

 

 

class PengirimanResource extends Resource
{
    protected static ?string $model = Pengiriman::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('kode')
                    ->readOnly()
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('ritase')
                    ->required()
                    ->maxLength(255),
                FileUpload::make('foto_suratjalan'),
                Forms\Components\Select::make('cabang_id')
                    ->relationship('cabang', 'name')
                    ->required(),
                Forms\Components\Select::make('employee_id')
                    ->relationship('employee', 'name')
                    ->required(),
                Forms\Components\Select::make('kendaraan_id')
                    ->relationship('kendaraan', 'plat')
                    ->searchable()
                    ->required(),
                Forms\Components\Select::make('brand_id')
                    ->relationship('brand', 'name')
                    ->required(),
                Forms\Components\Select::make('muatan_id')
                    ->relationship('muatan', 'name')
                    ->required(),
                Forms\Components\TextInput::make('jumlahmuatan_b')
                    ->numeric()
                    ->required()
                    ->maxLength(255),
                FileUpload::make('fotomuatan_b'),
                FileUpload::make('fotokm_b'),
                Forms\Components\DatePicker::make('waktu_berangkat')
                    ->required(),
                Select::make('status')
                    ->options([
                        'Keluar' => 'Keluar',
                        'Masuk' => 'Masuk',
                        'Muat' => 'Muat',
                    ]),
                
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('kode')
                    ->searchable(),
                Tables\Columns\TextColumn::make('ritase')
                    ->searchable(),
                ImageColumn::make('foto_suratjalan')
                    ->square(),
                Tables\Columns\TextColumn::make('cabang.name')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('employee.name')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('kendaraan.id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('brand.name')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('muatan.name')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('jumlahmuatan_b')
                    ->searchable(),
                ImageColumn::make('fotomuatan_b')
                    ->square(),
                ImageColumn::make('fotokm_b')
                    ->square() ,
                Tables\Columns\TextColumn::make('waktu_berangkat')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('status')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPengirimen::route('/'),
            'create' => Pages\CreatePengiriman::route('/create'),
            'edit' => Pages\EditPengiriman::route('/{record}/edit'),
        ];
    }
}
