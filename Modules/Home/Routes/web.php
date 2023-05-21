<?php

use Shipu\Themevel\Facades\Theme;

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

Route::prefix('home')->name('home.')->group(function() {
    Theme::set(config('theme.active'));
    Route::get('/', 'HomeController@index')->name('index');
});
