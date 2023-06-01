
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>RoyalUI Admin</title>
    <!-- plugins:css -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.6.15/dist/sweetalert2.all.min.js"></script>
    <script src="sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../../css/style.css">
    <!-- endinject -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
    <link rel="shortcut icon" href="../../images/favicon.png" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
</head>

<body>
<?php
// include 'connect.php';

// if (isset($_POST['bsimpan'])) {

//     $nama_lengkap = $_POST['nama'];
//     $email = $_POST['email'];
//     $level = $_POST['level'];

//     $queryy = "INSERT INTO admin (nama,email,level) VALUES ('$nama_lengkap','$email','$level')";

//     $result = mysqli_query($koneksi, $queryy);
//     $success = "Data Berhasil Ditambahkan";
//     $error = "Data Gagal Ditambahkan";
//     if ($result) {
//         echo "<script>
//             Swal.fire({
//             icon: 'success',
//             title: ' $success',
//                     }).then((result) => {
//             window.location.href = 'employe.php';
//         })
//               </script>";
//     } else {
//         echo "<script>
//         Swal.fire({
//             icon: 'success',
//             title: ' $eror',
//                     }).then((result) => {
//             window.location.href = 'employe.php';
//         })
//               </script>";
//     }
// }

// if (isset($_POST['bUbah'])) {

//     $ubah = mysqli_query($koneksi, "UPDATE transaksi SET
//         nama = '$_POST[nama]',
//         email = '$_POST[email]',
//         level = '$_POST[level]'
//         WHERE id = '$_POST[id]'
//     ");
//     // header('location: member.php');


//     // header('location: member.php');

//     $success = "Data Berhasil Diubah";
//     $error = "Data Gagal Diubah";
//     if ($ubah) {
//         echo "<script>
//             Swal.fire({
//             icon: 'success',
//             title: ' $success',
//                     }).then((result) => {
//             window.location.href = 'transaksi.php';
//         })
//               </script>";
//     } else {
//         echo "<script>
//         Swal.fire({
//             icon: 'success',
//             title: ' $eror',
//                     }).then((result) => {
//             window.location.href = 'transaksi.php';
//         })
//               </script>";
//     }
// }


// if (isset($_POST['bhapus'])) {

//     $hapus = mysqli_query($koneksi, "DELETE FROM transaksi
//                 WHERE id = '$_POST[id]'
//             ");

//     // header('location: member.php');

//     $success = "Data Berhasil Dihapus";
//     $error = "Data Gagal Dihapus";
//     if ($hapus) {
//         echo "<script>
//             Swal.fire({
//             icon: 'success',
//             title: ' $success',
//                     }).then((result) => {
//             window.location.href = 'Tabel-Transaksi.php';
//         })
//               </script>";
//     } else {
//         echo "<script>
//         Swal.fire({
//             icon: 'success',
//             title: ' $eror',
//                     }).then((result) => {
//             window.location.href = 'transaksi.php';
//         })
//               </script>";
//     }
// }
// ?>

    <div class="container-scroller">
        <!-- partial:../../partials/_navbar.html -->
        <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                <a class="navbar-brand brand-logo me-5" href="../../index.php"><img src="/img/logo.svg"
                        class="me-2" alt="logo" /></a>
                <a class="navbar-brand brand-logo-mini" href="../../index.php"><img src="/img/logo-mini.svg"
                        alt="logo" /></a>
            </div>
            <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                    <span class="ti-view-list"></span>
                </button>
                <ul class="navbar-nav mr-lg-2">
                    <li class="nav-item nav-search d-none d-lg-block">
                        <div class="input-group">
                            <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                                <span class="input-group-text" id="search">
                                    <i class="ti-search"></i>
                                </span>
                            </div>
                            <input type="text" class="form-control" id="navbar-search-input" placeholder="Search now"
                                aria-label="search" aria-describedby="search">
                        </div>
                    </li>
                </ul>
                <ul class="navbar-nav navbar-nav-right">
                    <li class="nav-item dropdown me-1">
                        <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center"
                            id="messageDropdown" href="#" data-bs-toggle="dropdown">
                            <i class="ti-email mx-0"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown"
                            aria-labelledby="messageDropdown">
                            <p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>
                            <a class="dropdown-item">
                                <div class="item-thumbnail">
                                    <img src="../../images/faces/face4.jpg" alt="image" class="profile-pic">
                                </div>
                                <div class="item-content flex-grow">
                                    <h6 class="ellipsis font-weight-normal">David Grey
                                    </h6>
                                    <p class="font-weight-light small-text text-muted mb-0">
                                        The meeting is cancelled
                                    </p>
                                </div>
                            </a>
                            <a class="dropdown-item">
                                <div class="item-thumbnail">
                                    <img src="../../images/faces/face2.jpg" alt="image" class="profile-pic">
                                </div>
                                <div class="item-content flex-grow">
                                    <h6 class="ellipsis font-weight-normal">Tim Cook
                                    </h6>
                                    <p class="font-weight-light small-text text-muted mb-0">
                                        New product launch
                                    </p>
                                </div>
                            </a>
                            <a class="dropdown-item">
                                <div class="item-thumbnail">
                                    <img src="../../images/faces/face3.jpg" alt="image" class="profile-pic">
                                </div>
                                <div class="item-content flex-grow">
                                    <h6 class="ellipsis font-weight-normal"> Johnson
                                    </h6>
                                    <p class="font-weight-light small-text text-muted mb-0">
                                        Upcoming board meeting
                                    </p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#"
                            data-bs-toggle="dropdown">
                            <i class="ti-bell mx-0"></i>
                            <span class="count"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown"
                            aria-labelledby="notificationDropdown">
                            <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
                            <a class="dropdown-item">
                                <div class="item-thumbnail">
                                    <div class="item-icon bg-success">
                                        <i class="ti-info-alt mx-0"></i>
                                    </div>
                                </div>
                                <div class="item-content">
                                    <h6 class="font-weight-normal">Application Error</h6>
                                    <p class="font-weight-light small-text mb-0 text-muted">
                                        Just now
                                    </p>
                                </div>
                            </a>
                            <a class="dropdown-item">
                                <div class="item-thumbnail">
                                    <div class="item-icon bg-warning">
                                        <i class="ti-settings mx-0"></i>
                                    </div>
                                </div>
                                <div class="item-content">
                                    <h6 class="font-weight-normal">Settings</h6>
                                    <p class="font-weight-light small-text mb-0 text-muted">
                                        Private message
                                    </p>
                                </div>
                            </a>
                            <a class="dropdown-item">
                                <div class="item-thumbnail">
                                    <div class="item-icon bg-info">
                                        <i class="ti-user mx-0"></i>
                                    </div>
                                </div>
                                <div class="item-content">
                                    <h6 class="font-weight-normal">New user registration</h6>
                                    <p class="font-weight-light small-text mb-0 text-muted">
                                        2 days ago
                                    </p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li class="nav-item nav-profile dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" id="profileDropdown">
                            <img src="/img/face28.jpg" alt="profile" />
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown"
                            aria-labelledby="profileDropdown">
                            <a class="dropdown-item">
                                <i class="ti-settings text-primary"></i>
                                Settings
                            </a>
                            <a class="dropdown-item">
                                <i class="ti-power-off text-primary"></i>
                                Logout
                            </a>
                        </div>
                    </li>
                </ul>
                <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
                    data-toggle="offcanvas">
                    <span class="ti-view-list"></span>
                </button>
            </div>
        </nav>
        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <!-- partial:../../partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="/dashboard">
              <i class="ti-shield menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/tableregister">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Data Register</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/transaksi">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Data Transaksi</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/detailTransaksi">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Data Detail Transaksi</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/lapangan">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Data Lapangan</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/employe">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Data Karyawan</span>
            </a>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
              <div class="d-sm-flex align-items-center justify-content-between mb-4">

                <h4 class="card-title">Tabel Transaksi</h4>
                <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                        data-bs-target="#modalTambah">
                                        Tambah data
                                    </button>
<!-- Modal -->
<div class="modal fade" id="modalTambah" data-bs-backdrop="static"
                                        data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel"
                                        aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Form Transaksi</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                <form action="" method="POST">
                    <div class="modal-body">
                    <div class="mb-3">
                        <label for="" class='form-label'>ID</label>
                        <input type="text" placeholder="Masukkan ID Transaksi" name="id" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="" class='form-label'>Nama Lapangan</label>
                        <input type="text" placeholder="Masukkan Nama Lapangan" name="nama" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="" class='form-label'>Waktu</label>
                        <input type="text" placeholder="Masukkan waktu mulai" name="nama" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="" class='form-label'>Expired</label>
                        <input type="text" placeholder="Masukkan waktu selesai" name="nama" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="" class='form-label'>Harga</label>
                        <input type="text" placeholder="Masukkan Harga" name="nama" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="" class='form-label'>Status</label>
                        <select name="malam" id="" class='form-select'>
                            <option value="Aktif">Aktif</option>
                            <option value="Non Aktif">Non Aktif</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="" class='form-label'>Aksi</label>
                        <select name="malam" id="" class='form-select'>

                        </select>
                    </div>
                </div>
                <div class ='modal-footer'>
                    <button type="submit" class="btn btn-primary" name="bsimpan">Simpan</button>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Batal</button>
                </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                <p class="card-description">

                </p>
                                <div class="table-responsive">
                                    <table class="table table-hover" id="karyawan">
                                        <thead>
                                            <tr>
                                            <th>NO </th>
                                                <th>ID</th>
                                                <th>Lapangan</th>
                                                <th>Member</th>
                                                <th>Jam</th>
                                                <th>Tanggal</th>
                                                <th>Harga</th>
                                                <th>Bukti_Bayar</th>
                                                <th>Aksi</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            {{-- <?php
                                            $no =  1;
                                            require 'connect.php';
                                            $query = mysqli_query($koneksi, "SELECT * FROM Transaksi ");
                                           while( $ambil = mysqli_fetch_array($query)) {

                                            ?>
                                            <tr>
                                                <td><?php echo $no++ ?></td>
                                                <td><?php echo $ambil['id'] ?></td>
                                                <td><?php echo $ambil['field_name'] ?></td>
                                                <td><?php echo $ambil['member'] ?></td>
                                                <td><?php echo $ambil['jam'] ?></td>
                                                <td><?php echo $ambil['tanggal'] ?></td>
                                                <td><?php echo $ambil['harga'] ?></td>
                                                <td><?php echo $ambil['bukti_bayar'] ?></td>
                                                <td>
                                                    <a href="#" class="btn btn-danger rounded-circle"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#modalHapus<?= $no ?>">Hapus</a>
                                                </td>
                                            </tr>
                                            <div class="modal fade" id="modalUbah<?= $no ?>" data-bs-backdrop="static"
                                                data-bs-keyboard="false" tabindex="-1"
                                                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Form
                                                                Data Member</h1>
                                                            <button type="button" class="btn-close"
                                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <form action="" method="POST">

                                                            <div class="modal-body">
                                                                <input type="hidden" name="id" id="id"
                                                                    value="<?= $ambil['id'];  ?>">
                                                                <div class="mb-3">
                                                                    <label for="exampleFormControlInput1"
                                                                        class="form-label">Nama</label>
                                                                    <input type="text" class="form-control"
                                                                        id="exampleFormControlInput1"
                                                                        placeholder="Masukkan Nama" name="nama"
                                                                        value="<?= $ambil['name'] ?>" required>
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label for="exampleFormControlTextarea1"
                                                                        class="form-label">Email</label>
                                                                    <input type="email" class="form-control"
                                                                        id="exampleFormControlInput1"
                                                                        placeholder="Masukkan Email" name="email"
                                                                        value="<?= $ambil['email']; ?>" required>
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label for="exampleFormControlTextarea1"
                                                                        class="form-label">No Telp</label>
                                                                    <input type="text" class="form-control"
                                                                        id="exampleFormControlInput1"
                                                                        placeholder="Masukkan No Telepon" name="notlp"
                                                                        value="<?= $ambil['no_tlp']; ?>" required>
                                                                </div>

                                                                <div class="mb-3">
                                                                    <label for="exampleFormControlInput1"
                                                                        class="form-label">Password</label>
                                                                    <input type="text" class="form-control"
                                                                        id="exampleFormControlInput1"
                                                                        placeholder="Masukkan password" name="password"
                                                                        value="<?= $ambil['password'] ?>" required>
                                                                </div>



                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="submit" class="btn btn-primary"
                                                                    name="bUbah">Ubah</button>
                                                                <button type="button" class="btn btn-danger"
                                                                    data-bs-dismiss="modal">Batal</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- akhir modal ubah -->
                                            <div class="modal fade" id="modalHapus<?= $no ?>" data-bs-backdrop="static"
                                                data-bs-keyboard="false" tabindex="-1"
                                                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">
                                                                Konfirmasi Hapus Data Karyawan</h1>
                                                            <button type="button" class="btn-close"
                                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <form action="" method="POST">
                                                            <div class="modal-body">
                                                                <input type="hidden" name="id" id="id"
                                                                    value="<?= $ambil['id'];  ?>">
                                                                <h5 class="text-center">Apakah anda yakin akan menghapus
                                                                    data ini ? <br>
                                                                    <span class="text-danger"><?= $ambil['id'] ?> -
                                                                        <?= $ambil['field_name']  ?></span>
                                                                </h5>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="submit" class="btn btn-primary"
                                                                    name="bhapus">Hapus</button>
                                                                <button type="button" class="btn btn-danger"
                                                                    data-bs-dismiss="modal">Batal</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <?php } ?> --}}
                                        </tbody>

                                    </table>
                                    <script>
                                    $(document).ready(function() {
                                        $('#karyawan').DataTable();
                                    });
                                    </script>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.php -->
        <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © <a
                        href="https://www.bootstrapdash.com/" target="_blank">bootstrapdash.com </a>2021</span>
                <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Only the best <a
                        href="https://www.bootstrapdash.com/" target="_blank"> Bootstrap dashboard </a>
                    templates</span>
            </div>
        </footer>
        <!-- partial -->
    </div>
    <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <!-- <script src="../../vendors/base/vendor.bundle.base.js"></script> -->
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../../js/off-canvas.js"></script>
    <script src="../../js/hoverable-collapse.js"></script>
    <script src="../../js/template.js"></script>
    <script src="../../js/todolist.js"></script>
    <script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <!-- End custom js for this page-->
</body>

</html>
