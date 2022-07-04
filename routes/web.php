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

Route::get('/', function () {
    return view('auth.login');
});

/*Route::get('/admin', function () {
    return view('admin.index');
});
*/

//Auth::routes();
//Route::get('alquilers/pdf', function () {
//    return view('home');
//});


//Route::get('reports/alquiler', [App\Http\Controllers\HomeController::class, 'alquiler'])->name('reports.alquiler');

/*Route::get('report/reportA', function () {
    return view('admin.index');
});
*/

Route::get('report/alquiler', [App\Http\Controllers\HomeController::class, 'reportAlquiler'])->name('reports-alquiler');
Route::get('report/pelicula', [App\Http\Controllers\HomeController::class, 'reportPelicula'])->name('reports-pelicula');
Route::get('report/socio', [App\Http\Controllers\HomeController::class, 'reportSocio'])->name('reports-socio');
Route::get('report/genero', [App\Http\Controllers\HomeController::class, 'reportGenero'])->name('reports-genero');
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//Route Hooks - Do not delete//
	Route::view('actorpeliculas', 'livewire.actorpeliculas.index')->middleware('auth');
	Route::view('alquilers', 'livewire.alquilers.index')->middleware('auth');
	Route::view('peliculas', 'livewire.peliculas.index')->middleware('auth');
	Route::view('actors', 'livewire.actors.index')->middleware('auth');
	Route::view('socios', 'livewire.socios.index')->middleware('auth');
	Route::view('formatos', 'livewire.formatos.index')->middleware('auth');
	Route::view('directors', 'livewire.directors.index')->middleware('auth');
	Route::view('generos', 'livewire.generos.index')->middleware('auth');
	Route::view('sexos', 'livewire.sexos.index')->middleware('auth');


