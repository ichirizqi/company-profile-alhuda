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
            <h1>Berita</h1>
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

     <div class="card card-success mx-3" >
              <div class="card-header">
                <h3 class="card-title">Detail Berita</h3>
              </div>
              
              <!-- /.card-header -->
              <!-- form start -->
              <table class="table table-bordered">
                  <tbody>
                    <tr>
                      <td>Judul</td>
                      <td>Judul</td>
                    </tr>
                    <tr>
                      <td>Keterangan</td>
                      <td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam et nobis incidunt dignissimos ipsum, sit, laborum alias expedita dolore voluptatum unde explicabo ipsam deleniti accusantium obcaecati eius hic totam eum!</td>
                    </tr>
                    <tr>
                      <td>Foto</td>
                      <td>Foto</td>
                    </tr>
                  </tbody>
                </table>
                <div class="card-footer">
                  <button type="submit" class="btn btn-success">Simpan</button>
                   <a href="/admin/berita" class="btn btn-default pull-right ml-2">Cancel</a>
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