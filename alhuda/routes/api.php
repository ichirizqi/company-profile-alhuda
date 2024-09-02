<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AdminFasilitasController;
use App\Http\Controllers\API\UserFasilitasController;
use App\Http\Controllers\API\AdminPengajarController;
use App\Http\Controllers\API\UserPengajarController;
use App\Http\Controllers\API\AdminGaleriController;
use App\Http\Controllers\API\UserGaleriController;
use App\Http\Controllers\API\AdminBeritaController;
use App\Http\Controllers\API\UserBeritaController;
use App\Http\Controllers\API\AdminEskulController;
use App\Http\Controllers\API\UserEskulController;
use App\Http\Controllers\API\AdminVisiController;
use App\Http\Controllers\API\UserVisiController;
use App\Http\Controllers\API\AdminMisiController;
use App\Http\Controllers\API\UserMisiController;
use App\Http\Controllers\API\AdminAlumniController;
use App\Http\Controllers\API\UserAlumniController;
use App\Http\Controllers\API\AdminFotoController;
use App\Http\Controllers\API\UserFotoController;
use App\Http\Controllers\API\AdminVedeoController;
use App\Http\Controllers\API\UserVedeoController;
use App\Http\Controllers\API\AdminPrestasiController;
use App\Http\Controllers\API\UserPrestasiController;
use App\Http\Controllers\API\AdminSambutanController;
use App\Http\Controllers\API\UserSambutanController;
use App\Http\Controllers\API\AdminPengumumanController;
use App\Http\Controllers\API\UserPengumumanController;
use App\Http\Controllers\API\AdminHubungiController;
use App\Http\Controllers\API\UserHubungiController;
use App\Http\Controllers\API\AdminKontakController;
use App\Http\Controllers\API\UserKontakController;
use App\Http\Controllers\API\AuthController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('superadmin/register', [AuthController::class, 'registersuperAdmin']);
Route::post('superadmin/login', [AuthController::class, 'superadminLogin'])->name('superadminLogin');
// Route::post('admin/login', [AuthController::class, 'adminLogin'])->name('adminLogin');
Route::group(['prefix' => 'admin', 'middleware' => ['auth:admin-api', 'scopes:admin']], function () {
    // admin
    Route::get('details', [AuthController::class, 'details']);
    //fasilitas
    Route::post('/fasilitas', [AdminFasilitasController::class, 'store']);
    Route::post('/fasilitas/{id}', [AdminFasilitasController::class, 'update']);
    Route::get('/fasilitas', [AdminFasilitasController::class, 'index']);
    Route::get('/fasilitas/{id}', [AdminFasilitasController::class, 'show']);
    Route::delete('/fasilitas/{id}', [AdminFasilitasController::class, 'destroy']);

    //pengajar
    Route::post('/pengajar', [AdminPengajarController::class, 'store']);
    Route::post('/pengajar/{id}', [AdminPengajarController::class, 'update']);
    Route::get('/pengajar', [AdminPengajarController::class, 'index']);
    Route::get('/pengajar/{id}', [AdminPengajarController::class, 'show']);
    Route::delete('/pengajar/{id}', [AdminPengajarController::class, 'destroy']);

    //galeri
    Route::post('/galeri', [AdminGaleriController::class, 'store']);
    Route::post('/galeri/{id}', [AdminGaleriController::class, 'update']);
    Route::get('/galeri', [AdminGaleriController::class, 'index']);
    Route::get('/galeri/{id}', [AdminGaleriController::class, 'show']);
    Route::delete('/galeri/{id}', [AdminGaleriController::class, 'destroy']);

    //berita
    Route::post('/berita', [AdminBeritaController::class, 'store']);
    Route::post('/berita/{id}', [AdminBeritaController::class, 'update']);
    Route::get('/berita', [AdminBeritaController::class, 'index']);
    Route::get('/berita/{id}', [AdminBeritaController::class, 'show']);
    Route::delete('/berita/{id}', [AdminBeritaController::class, 'destroy']);

    //eskul
    Route::post('/eskul', [AdminEskulController::class, 'store']);
    Route::post('/eskul/{id}', [AdminEskulController::class, 'update']);
    Route::get('/eskul', [AdminEskulController::class, 'index']);
    Route::get('/eskul/{id}', [AdminEskulController::class, 'show']);
    Route::delete('/eskul/{id}', [AdminEskulController::class, 'destroy']);

    //misi
    Route::post('/misi', [AdminMisiController::class, 'store']);
    Route::post('/misi/{id}', [AdminMisiController::class, 'update']);
    Route::get('/misi', [AdminMisiController::class, 'index']);
    Route::delete('/misi/{id}', [AdminMisiController::class, 'destroy']);

    //visi
    Route::post('/visi/{id}', [AdminVisiController::class, 'update']);
    Route::get('/visi', [AdminVisiController::class, 'index']);

    //Alumni
    Route::post('/alumni', [AdminAlumniController::class, 'store']);
    Route::post('/alumni/{id}', [AdminAlumniController::class, 'update']);
    Route::get('/alumni', [AdminAlumniController::class, 'index']);
    Route::get('/alumni/{id}', [AdminAlumniController::class, 'show']);
    Route::delete('/alumni/{id}', [AdminAlumniController::class, 'destroy']);

    //Foto Beranda
    Route::post('/foto', [AdminFotoController::class, 'store']);
    Route::post('/foto/{id}', [AdminFotoController::class, 'update']);
    Route::get('/foto', [AdminFotoController::class, 'index']);
    Route::get('/foto/{id}', [AdminFotoController::class, 'show']);
    Route::delete('/foto/{id}', [AdminFotoController::class, 'destroy']);

    //Vedeo Beranda
    Route::post('/vedeo', [AdminVedeoController::class, 'store']);
    Route::post('/vedeo/{id}', [AdminVedeoController::class, 'update']);
    Route::get('/vedeo', [AdminVedeoController::class, 'index']);
    Route::get('/vedeo/{id}', [AdminVedeoController::class, 'show']);
    Route::delete('/vedeo/{id}', [AdminVedeoController::class, 'destroy']);

    //Prestasi
    Route::post('/prestasi', [AdminPrestasiController::class, 'store']);
    Route::put('/prestasi/{id}', [AdminPrestasiController::class, 'update']);
    Route::get('/prestasi', [AdminPrestasiController::class, 'index']);
    Route::get('/prestasi/{id}', [AdminPrestasiController::class, 'show']);
    Route::delete('/prestasi/{id}', [AdminPrestasiController::class, 'destroy']);

    //Sambutan
    Route::post('/sambutan/{id}', [AdminSambutanController::class, 'update']);
    Route::get('/sambutan', [AdminSambutanController::class, 'index']);

    //Pengumuman
    Route::post('/pengumuman', [AdminPengumumanController::class, 'store']);
    Route::post('/pengumuman/{id}', [AdminPengumumanController::class, 'update']);
    Route::get('/pengumuman', [AdminPengumumanController::class, 'index']);
    Route::get('/pengumuman/{id}', [AdminPengumumanController::class, 'show']);
    Route::delete('/pengumuman/{id}', [AdminPengumumanController::class, 'destroy']);

    //hubungi kami 
    Route::get('/hubungi', [AdminHubungiController::class, 'index']);
    Route::get('/hubungi/{id}', [AdminHubungiController::class, 'show']);

    //kontak kami
    Route::get('/kontak', [AdminKontakController::class, 'index']);
    Route::post('/kontak/{id}', [AdminKontakController::class, 'update']);

    // }    
});

Route::group(['prefix' => 'superadmin', 'middleware' => ['auth:user-api', 'scopes:user']], function () {
    // admin
    Route::get('details', [AuthController::class, 'details']);
    //register admin
    Route::post('register', [AuthController::class, 'registerAdmin']);
    Route::get('dashboard', [AuthController::class, 'adminDashboard']);

    //fasilitas
    Route::post('/fasilitas', [AdminFasilitasController::class, 'store']);
    Route::post('/fasilitas/{id}', [AdminFasilitasController::class, 'update']);
    Route::get('/fasilitas', [AdminFasilitasController::class, 'index']);
    Route::get('/fasilitas/{id}', [AdminFasilitasController::class, 'show']);
    Route::delete('/fasilitas/{id}', [AdminFasilitasController::class, 'destroy']);

    //pengajar
    Route::post('/pengajar', [AdminPengajarController::class, 'store']);
    Route::post('/pengajar/{id}', [AdminPengajarController::class, 'update']);
    Route::get('/pengajar', [AdminPengajarController::class, 'index']);
    Route::get('/pengajar/{id}', [AdminPengajarController::class, 'show']);
    Route::delete('/pengajar/{id}', [AdminPengajarController::class, 'destroy']);

    //galeri
    Route::post('/galeri', [AdminGaleriController::class, 'store']);
    Route::post('/galeri/{id}', [AdminGaleriController::class, 'update']);
    Route::get('/galeri', [AdminGaleriController::class, 'index']);
    Route::get('/galeri/{id}', [AdminGaleriController::class, 'show']);
    Route::delete('/galeri/{id}', [AdminGaleriController::class, 'destroy']);

    //berita
    Route::post('/berita', [AdminBeritaController::class, 'store']);
    Route::post('/berita/{id}', [AdminBeritaController::class, 'update']);
    Route::get('/berita', [AdminBeritaController::class, 'index']);
    Route::get('/berita/{id}', [AdminBeritaController::class, 'show']);
    Route::delete('/berita/{id}', [AdminBeritaController::class, 'destroy']);

    //eskul
    Route::post('/eskul', [AdminEskulController::class, 'store']);
    Route::post('/eskul/{id}', [AdminEskulController::class, 'update']);
    Route::get('/eskul', [AdminEskulController::class, 'index']);
    Route::get('/eskul/{id}', [AdminEskulController::class, 'show']);
    Route::delete('/eskul/{id}', [AdminEskulController::class, 'destroy']);

    //misi
    Route::post('/misi', [AdminMisiController::class, 'store']);
    Route::post('/misi/{id}', [AdminMisiController::class, 'update']);
    Route::get('/misi', [AdminMisiController::class, 'index']);
    Route::delete('/misi/{id}', [AdminMisiController::class, 'destroy']);

    //visi
    Route::post('/visi/{id}', [AdminVisiController::class, 'update']);
    Route::get('/visi', [AdminVisiController::class, 'index']);

    //Alumni
    Route::post('/alumni', [AdminAlumniController::class, 'store']);
    Route::post('/alumni/{id}', [AdminAlumniController::class, 'update']);
    Route::get('/alumni', [AdminAlumniController::class, 'index']);
    Route::get('/alumni/{id}', [AdminAlumniController::class, 'show']);
    Route::delete('/alumni/{id}', [AdminAlumniController::class, 'destroy']);

    //Foto Beranda
    Route::post('/foto', [AdminFotoController::class, 'store']);
    Route::post('/foto/{id}', [AdminFotoController::class, 'update']);
    Route::get('/foto', [AdminFotoController::class, 'index']);
    Route::get('/foto/{id}', [AdminFotoController::class, 'show']);
    Route::delete('/foto/{id}', [AdminFotoController::class, 'destroy']);

    //Vedeo Beranda
    Route::post('/vedeo', [AdminVedeoController::class, 'store']);
    Route::post('/vedeo/{id}', [AdminVedeoController::class, 'update']);
    Route::get('/vedeo', [AdminVedeoController::class, 'index']);
    Route::get('/vedeo/{id}', [AdminVedeoController::class, 'show']);
    Route::delete('/vedeo/{id}', [AdminVedeoController::class, 'destroy']);

    //Prestasi
    Route::post('/prestasi', [AdminPrestasiController::class, 'store']);
    Route::put('/prestasi/{id}', [AdminPrestasiController::class, 'update']);
    Route::get('/prestasi', [AdminPrestasiController::class, 'index']);
    Route::get('/prestasi/{id}', [AdminPrestasiController::class, 'show']);
    Route::delete('/prestasi/{id}', [AdminPrestasiController::class, 'destroy']);

    //Sambutan
    Route::post('/sambutan/{id}', [AdminSambutanController::class, 'update']);
    Route::get('/sambutan', [AdminSambutanController::class, 'index']);

    //Pengumuman
    Route::post('/pengumuman', [AdminPengumumanController::class, 'store']);
    Route::post('/pengumuman/{id}', [AdminPengumumanController::class, 'update']);
    Route::get('/pengumuman', [AdminPengumumanController::class, 'index']);
    Route::get('/pengumuman/{id}', [AdminPengumumanController::class, 'show']);
    Route::delete('/pengumuman/{id}', [AdminPengumumanController::class, 'destroy']);

    //hubungi kami 
    Route::get('/hubungi', [AdminHubungiController::class, 'index']);
    Route::get('/hubungi/{id}', [AdminHubungiController::class, 'show']);

    //kontak kami
    Route::get('/kontak', [AdminKontakController::class, 'index']);
    Route::post('/kontak/{id}', [AdminKontakController::class, 'update']);

    // }    
});


// user{

//fasilitas 
Route::get('/user/fasilitas', [UserFasilitasController::class, 'index']);

//pengajar
Route::get('/user/pengajar', [UserPengajarController::class, 'index']);

//galeri
Route::get('/user/galeri', [UserGaleriController::class, 'index']);

//berita
Route::get('/user/berita', [UserBeritaController::class, 'index']);

//eskul
Route::get('/user/eskul', [UserEskulController::class, 'index']);

//visi
Route::get('/user/visi', [UserVisiController::class, 'index']);

//misi
Route::get('/user/misi', [UserMisiController::class, 'index']);

//alumni
Route::get('/user/alumni', [UserAlumniController::class, 'index']);

//foto beranda
Route::get('/user/foto', [UserFotoController::class, 'index']);

//vedeo
Route::get('/user/vedeo', [UserVedeoController::class, 'index']);

//prestasi
Route::get('/user/prestasi', [UserPrestasiController::class, 'index']);

//sambutan 
Route::get('/user/sambutan', [UserSambutanController::class, 'index']);

//pengumuman 
Route::get('/user/pengumuman', [UserPengumumanController::class, 'index']);

//hubungi kami
Route::post('/user/hubungi', [UserHubungiController::class, 'store']);

//kontak kami 
Route::get('/user/kontak', [UserKontakController::class, 'index']);

// }
