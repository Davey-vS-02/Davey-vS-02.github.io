<?php

use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\GoogleAuthController;

// Route to redirect to Google's OAuth page
Route::get('/auth/google/redirect', [GoogleAuthController::class, 'redirect'])->name('auth.google.redirect');

// Route to handle the callback from Google
Route::get('api/auth/google/callback', [GoogleAuthController::class, 'callback'])->name('auth.google.callback');

Route::get('/', function () {
    return Inertia::render('Home');
})->name('home');

Route::get('/about', function () {
    return Inertia::render('About');
})->name('about');

//Eventually move to controller please...
Route::get('/products', function () {
    return Inertia::render('Products');
})->name('products');

Route::get('/donorInfo', function () {
    return Inertia::render('DonorInfo');
})->name('donor.info');

Route::get('/contact', function () {
    return Inertia::render('Contact');
})->name('contact');

Route::get('/profile', function () {
    return Inertia::render('ProfileInfo');
})->name('user.profile.info');


//Route::get('/', function () {
//    return Inertia::render('Homepage', [
//        'canLogin' => Route::has('login'),
//        'canRegister' => Route::has('register'),
//        'laravelVersion' => Application::VERSION,
//        'phpVersion' => PHP_VERSION,
//    ]);
//});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', function () {
        return Inertia::render('Dashboard');
    })->name('dashboard');
});
