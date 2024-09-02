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

// USER
Route::get('/', function () {
    return view('user.beranda');
});
route::view('/visimisi', 'user.visimisi');
route::view('/prestasi', 'user.prestasi');
route::view('/fasilitas', 'user.fasilitas');
route::view('/pengajar', 'user.pengajar');
route::view('/galeri', 'user.galeri');
route::view('/ekskul', 'user.ekskul');
route::view('/berita', 'user.berita');

// ADMIN
route::view('/admin', 'admin.login');
route::view('/admin/beranda', 'admin.beranda');
route::view('/admin/visimisi', 'admin.visimisi');
route::view('/admin/prestasi', 'admin.prestasi');
route::view('/admin/fasilitas', 'admin.fasilitas');
route::view('/admin/pengajar', 'admin.pengajar');
route::view('/admin/kontak', 'admin.kontak');
route::view('/admin/galeri', 'admin.galeri');
route::view('/admin/ekskul', 'admin.ekskul');
route::view('/admin/berita', 'admin.berita');
route::view('/admin/pengumuman', 'admin.pengumuman');
route::view('/admin/pengaturan-admin', 'admin.pengaturan_admin');

route::view('/admin/beranda/tambah', 'admin.tambah_beranda');
route::view('/admin/beranda/edit', 'admin.edit_beranda');

route::view('/admin/visimisi/edit', 'admin.edit_visimisi');

route::view('/admin/prestasi/tambah', 'admin.tambah_prestasi');
route::view('/admin/prestasi/edit', 'admin.edit_prestasi');

route::view('/admin/fasilitas/tambah', 'admin.tambah_fasilitas');
route::view('/admin/fasilitas/edit', 'admin.edit_fasilitas');

route::view('/admin/pengajar/tambah', 'admin.tambah_pengajar');
route::view('/admin/pengajar/edit', 'admin.edit_pengajar');

route::view('/admin/kontak/tambah', 'admin.tambah_kontak');
route::view('/admin/kontak/edit', 'admin.edit_kontak');

route::view('/admin/galeri/tambah', 'admin.tambah_galeri');
route::view('/admin/galeri/edit', 'admin.edit_galeri');

route::view('/admin/ekskul/tambah', 'admin.tambah_ekskul');
route::view('/admin/ekskul/edit', 'admin.edit_ekskul');

route::view('/admin/berita/tambah', 'admin.tambah_berita');
route::view('/admin/berita/edit', 'admin.edit_berita');
route::view('/admin/berita/detail', 'admin.detail_berita');

route::view('/admin/pengumuman/tambah', 'admin.tambah_pengumuman');
route::view('/admin/pengumuman/edit', 'admin.edit_pengumuman');
route::view('/admin/pengumuman/detail', 'admin.detail_pengumuman');

route::view('/admin/pengaturan-admin/tambah', 'admin.tambah_admin');
route::view('/admin/pengaturan-admin/edit', 'admin.edit_admin');