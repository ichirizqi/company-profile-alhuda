<template>
  <div>
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button">
              <fa icon="bars"/>
            </a>
          </li>
        
        </ul>
    </nav>

  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="" class="brand-link">
      <img src="https://adminlte.io/themes/v3/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="https://adminlte.io/themes/v3/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Alexander Pierce</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

          <!-- Beranda -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <fa icon="tachometer-alt"/>
              <p>
                Beranda
                <fa icon="angle-left" class="right"/>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/hero" class="nav-link">
                  <p>Hero</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/sambutan" class="nav-link">
                  <p>Sambutan</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/video" class="nav-link">
                  <p>Video</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/alumni" class="nav-link">
                  <p>Alumni</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- Profil -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <fa icon="laptop"/>
              <p>
                Profil
                <fa icon="angle-left" class="right"/>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/visi" class="nav-link">
                  <p>Visi</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/misi" class="nav-link">
                  <p>Misi</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/prestasi" class="nav-link">
                  <p>Prestasi Siswa</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/fasilitas" class="nav-link">
                  <p>Fasilitas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/pengajar" class="nav-link">
                  <p>Pengajar</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- Kegiatan -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <fa icon="book"/>
              <p>
                Kegiatan
                <fa icon="angle-left" class="right"/>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/ekskul" class="nav-link">
                  <p>Ekstrakulikuler</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/berita" class="nav-link">
                  <p>Berita</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/pengumuman" class="nav-link">
                  <p>Pengumuman</p>
                </a>
              </li>
            </ul>
          </li>
          <!-- Galeri -->
          <li class="nav-item">
            <a href="/admin/galeri" class="nav-link">
               <fa icon="images"/>
              <p>
                Galeri
              </p>
            </a>
          </li>
          <!-- Kontak -->
          <li class="nav-item">
            <a href="#" class="nav-link">
              <fa icon="address-card"/>
              <p>
                Kontak
                <fa icon="angle-left" class="right"/>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                 <a href="/admin/kontak" class="nav-link">
                  <fa icon="id-card-alt"/>
                  <p>
                    Kontak
                  </p>
                </a>
              </li>
               <li class="nav-item">
                 <a href="/admin/hubungi" class="nav-link">
                  <fa icon="phone-alt"/>
                  <p>
                    Hubungi Kami
                  </p>
                </a>
              </li>
            </ul>
          </li>
          <!-- Pengaturan Admin -->
          <li class="nav-item">
            <a href="/admin/pengaturan" class="nav-link">
               <fa icon="users"/>
              <p>
                Pengaturan Admin
              </p>
            </a>
          </li>
          <!-- Logout -->
          <li class="nav-item">
            <a href="/admin/login" class="nav-link">
              <fa icon="sign-out-alt"/>
              <p>
                Logout
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  </div>
</template>
