<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::controller(MemberController::class)->name('members.')->group(function () { 
    Route::get('/members', 'index')->name('index'); 
    Route::get('/members/create', 'create')->name('create'); 
    Route::get('/members/{id}', 'show')->name('show'); 
   }); 
Route::controller(LapanganController::class)->name('members.')->group(function () { 
    Route::get('/members', 'index')->name('index'); 
    Route::get('/members/create', 'create')->name('create'); 
    Route::get('/members/{id}', 'show')->name('show'); 
   }); 
Route::controller(Controller::class)->name('members.')->group(function () { 
    Route::get('/members', 'index')->name('index'); 
    Route::get('/members/create', 'create')->name('create'); 
    Route::get('/members/{id}', 'show')->name('show'); 
   }); 

Route::get('/', function () {
    return view('welcome');
});
