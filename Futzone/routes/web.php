<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\LoginController;

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

Route::group(['namespace' => 'App\Http\Controllers'], function()
{
    /**
     * Home Routes
     */
    // Route::get('/', 'HomeController@index')->name('home.index');
    Route::get('/basic', [AdminController::class,'basic']);
    Route::get('/employe', [AdminController::class,'employe']);
    Route::get('/lapangan', [AdminController::class,'lapangan']);
    Route::get('/detailTransaksi', [AdminController::class,'detailTransaksi']);
    Route::get('/tableregister', [AdminController::class,'tableregister']);
    Route::get('/transaksi', [AdminController::class,'transaksi']);
    Route::get('/dashboard', [AdminController::class,'dashboard']);
    Route::get('/', [LoginController::class,'show']);
    Route::get('/home', [HomeController::class,'index']);

    Route::group(['middleware' => ['guest']], function() {
        /**
         * Register Routes
         */
        Route::get('/register', 'RegisterController@show')->name('register.show');
        Route::post('/register', 'RegisterController@register')->name('register.perform');

        /**
         * Login Routes
         */
        Route::get('/login', 'LoginController@show')->name('login.show');
        Route::post('/login', 'LoginController@login')->name('login.perform');

    });

    Route::group(['middleware' => ['auth']], function() {
        /**
         * Logout Routes
         */
        Route::get('/logout', 'LogoutController@perform')->name('logout.perform');
    });
});