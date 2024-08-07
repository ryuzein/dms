<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SupplierResource\Pages;
use App\Filament\Resources\SupplierResource\RelationManagers;
use App\Models\Supplier;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Forms\Components\FileUpload;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Columns\ImageColumn;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SupplierResource extends Resource
{
    protected static ?string $model = Supplier::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('ekspedisi')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('cabang_id')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('kendaraan')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('plat')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('employee')
                    ->required()
                    ->maxLength(255),
                FileUpload::make('foto_suratjaland'),
                FileUpload::make('foto_muatand'),
                FileUpload::make('foto_kmd'),
                Forms\Components\TextInput::make('brand')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('muatan')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('jumlahd')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('waktudatang')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('ekspedisi')
                    ->searchable(),
                Tables\Columns\TextColumn::make('cabang_id')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('kendaraan')
                    ->searchable(),
                Tables\Columns\TextColumn::make('plat')
                    ->searchable(),
                Tables\Columns\TextColumn::make('employee')
                    ->searchable(),
                ImageColumn::make('foto_suratjaland')
                    ->square(),
                ImageColumn::make('foto_muatand')
                    ->square(),
                ImageColumn::make('foto_kmd')
                    ->square(),
                Tables\Columns\TextColumn::make('brand')
                    ->searchable(),
                Tables\Columns\TextColumn::make('muatan')
                    ->searchable(),
                Tables\Columns\TextColumn::make('jumlahd')
                    ->searchable(),
                Tables\Columns\TextColumn::make('waktudatang')
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
            'index' => Pages\ListSuppliers::route('/'),
            'create' => Pages\CreateSupplier::route('/create'),
            'edit' => Pages\EditSupplier::route('/{record}/edit'),
        ];
    }
}
