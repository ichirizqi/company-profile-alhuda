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
            <h1>Ekstrakulikuler</h1>
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
                <h3 class="card-title">Edit Ekstrakulikuler</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form>
                <div class="card-body">
                    <div class="form-group">
                    <label for="exampleInputEmail1">Nama</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Masukkan Nama">
                  </div>
                  <div class="form-group">
                        <label>Keterangan</label>
                        <textarea class="form-control" rows="3" placeholder="Masukkan Keterangan"></textarea>
                      </div>
                  <div class="form-group">
                        <label>Jadwal Ekstrakulikuler</label>
                        <textarea class="form-control" rows="3" placeholder="Masukkan Jadwal"></textarea>
                      </div>
                    <div class="form-group">
                    <label for="exampleInputFile">Foto</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="exampleInputFile">
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                    </div>
                  </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-success">Simpan</button>
                   <a href="/admin/ekskul" class="btn btn-default pull-right ml-2">Cancel</a>
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