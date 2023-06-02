<?php
use App\Http\Controllers\contactcontroller;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/contacts', function () {
    $contacts = getContacts();
        
    return view('contacts.index', ['contacts'=>$contacts]);
})->name('contacts.index');

Route::get('/contacts/create', function () {
    return "<h1>Add new contact</h1>";
})->name('contacts.create');

Route::get('/contacts/{id}', function ($id) {
    $contacts = getContacts();
    abort_unless(isset($contacts[$id]), 404);
    $contacts = $contacts[$id];
    return view('Contacts.show')->with('contacts', $contacts);
})->name('contacts.show');

function getContacts()
{
    return[
        1 => ['name' => 'Name 1', 'phone' => '1234567890'],
        2 => ['name' => 'Name 2', 'phone' => '2345678901'],
        3 => ['name' => 'Name 3', 'phone' => '3456789012'],
    ];
}