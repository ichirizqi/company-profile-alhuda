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

     <div class="card card-success mx-3" >
              <div class="card-header">
                <h3 class="card-title">Edit Visi</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form>
                <div class="card-body">
                    <div class="form-group">
                        <label>Visi</label>
                        <textarea class="form-control" rows="3" placeholder="Masukkan Visi"></textarea>
                      </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-success">Simpan</button>
                   <a href="/admin/visi" class="btn btn-default pull-right ml-2">Cancel</a>
                </div>
              </form>
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