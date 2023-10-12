<?php

use App\Http\Controllers\AuthenticationController;
use App\Http\Controllers\OrganizationController;
use App\Http\Controllers\PersonController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
 });

Route::post('/login', [AuthenticationController::class, 'login']);
Route::middleware('auth:sanctum')->post('/logout', [AuthenticationController::class, 'logout']);

Route::prefix('/organizations')->middleware('auth:sanctum')->group(function() {
    Route::get('/', [OrganizationController::class, 'pagination']);
    Route::get('/{id}', [OrganizationController::class, 'findById']);
    Route::post('/', [OrganizationController::class, 'create'])->middleware('ability:admin');
    Route::post('/{id}/update', [OrganizationController::class, 'update'])->middleware('ability:admin,manager');
    Route::delete('/{id}', [OrganizationController::class, 'delete'])->middleware('ability:admin');
});

Route::prefix('/persons')->middleware('auth:sanctum')->group(function() {
    Route::get('/{id}/table', [PersonController::class, 'pagination']);
    Route::get('/{id}', [PersonController::class, 'findById']);
    Route::post('/', [PersonController::class, 'create'])->middleware('ability:admin,manager');
    Route::post('/{id}/update', [PersonController::class, 'update'])->middleware('ability:admin,manager');
    Route::delete('/{id}', [PersonController::class, 'delete'])->middleware('ability:admin,manager');
});

Route::prefix('/users')->middleware('auth:sanctum', 'ability:admin')->group(function() {
    Route::get('/', [UserController::class, 'pagination']);
    Route::get('/{id}', [UserController::class, 'findById']);
    Route::post('/', [UserController::class, 'create']);
    Route::put('/{id}', [UserController::class, 'update']);
    Route::delete('/{id}', [UserController::class, 'delete']);
});
