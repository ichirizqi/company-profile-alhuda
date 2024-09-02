<template>
  <div>
    <Metaadmin />

<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <Navbaradmin />

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Alumni</h1>
          </div>
          <!-- <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Blank Page</li>
            </ol>
          </div> -->
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <div class="card">
              <div class="card-header">
                <div class="box-header with-border">
                            <a href="/admin/tambahalumni" class="btn btn-sm btn-success"><fa icon="plus"/> Tambah Alumni</a>
                        </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th style="width: 10px">No</th>
                      <th style="width:50px">Nama</th>
                      <th style="width:50px">Prestasi</th>
                      <th style="width:50px">Judul</th>
                      <th style="width:150px">Testimoni</th>
                      <th style="width:100px">Foto</th>
                      <th style="width: 50px">Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1.</td>
                      <td>Update software</td>
                      <td>Prestasi</td>
                      <td>Judul</td>
                      <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam in doloremque, alias ipsum fuga magni cupiditate nulla laboriosam officiis blanditiis corporis suscipit eveniet voluptatem velit modi culpa cumque molestiae aliquam!</td>
                      <td>Foto</td>
                      <td>
                        <a href="/admin/editalumni" 
                          class="btn btn-xs btn-warning" title="Sunting"><fa icon="edit"/>
                        </a>
                        <a href="#" 
                          class="btn btn-xs btn-danger" title="Hapus"><fa icon="trash"/>
                        </a> 
                      </td>
                    </tr>
                    <tr>
                      <td>2.</td>
                      <td>Clean database</td>
                      <td>Prestasi</td>
                      <td>Judul</td>
                      <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam in doloremque, alias ipsum fuga magni cupiditate nulla laboriosam officiis blanditiis corporis suscipit eveniet voluptatem velit modi culpa cumque molestiae aliquam!</td>
                      <td>Foto</td>
                      <td>
                        <a href="/admin/editalumni" 
                          class="btn btn-xs btn-warning" title="Sunting"><fa icon="edit"/>
                        </a>
                        <a href="#" 
                          class="btn btn-xs btn-danger" title="Hapus"><fa icon="trash"/>
                        </a> 
                      </td>
                    </tr>
                    <tr>
                      <td>3.</td>
                      <td>Cron job running</td>
                      <td>Prestasi</td>
                      <td>Judul</td>
                      <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam in doloremque, alias ipsum fuga magni cupiditate nulla laboriosam officiis blanditiis corporis suscipit eveniet voluptatem velit modi culpa cumque molestiae aliquam!</td>
                      <td>Foto</td>
                      <td>
                        <a href="/admin/editalumni" 
                          class="btn btn-xs btn-warning" title="Sunting"><fa icon="edit"/>
                        </a>
                        <a href="#" 
                          class="btn btn-xs btn-danger" title="Hapus"><fa icon="trash"/>
                        </a> 
                      </td>
                    </tr>
                    <tr>
                      <td>4.</td>
                      <td>Fix and squish bugs</td>
                      <td>Prestasi</td>
                      <td>Judul</td>
                      <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam in doloremque, alias ipsum fuga magni cupiditate nulla laboriosam officiis blanditiis corporis suscipit eveniet voluptatem velit modi culpa cumque molestiae aliquam!</td>
                      <td>Foto</td>
                      <td>
                        <a href="/admin/editalumni" 
                          class="btn btn-xs btn-warning" title="Sunting"><fa icon="edit"/>
                        </a>
                        <a href="#" 
                          class="btn btn-xs btn-danger" title="Hapus"><fa icon="trash"/>
                        </a> 
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <!-- /.card -->
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <Footeradmin />
</div>
<!-- ./wrapper -->

<Scriptadmin />
</body>
  </div>
</template>