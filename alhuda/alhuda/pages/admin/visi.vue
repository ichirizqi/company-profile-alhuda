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
            <h1>Visi</h1>
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
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th style="width: 10px">No</th>
                      <th>Visi</th>
                      <th style="width: 200px">Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1.</td>
                      <td>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem maxime, praesentium, nisi molestiae repudiandae architecto vero porro vitae temporibus veniam beatae. Ipsam, libero! Hic maiores non amet eum mollitia a!</td>
                      <td>
                        <a href="/admin/editvisi" 
                          class="btn btn-xs btn-warning" title="Sunting"><fa icon="edit"/>
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