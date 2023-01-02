
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>ZonaFutsal Admin</title>
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
    <link rel="shortcut icon" href="../../images/logo.png" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
</head>

<body>
<?php 
include 'connect.php';

if (isset($_POST['bsimpan'])) {
    $kode = $_POST['id'];
    $name = $_POST['nama'];
    $tipe = $_POST['tipe'];
    $siang = $_POST['siang'];
    $malam = $_POST['malam'];
    $status = $_POST['status'];

    $queryy = "INSERT INTO field VALUES ('$kode','$name','$tipe','$siang','$malam','$status')";

    $result = mysqli_query($koneksi, $queryy);
    $success = "Data Berhasil Ditambahkan";
    $error = "Data Gagal Ditambahkan";
    if ($result) {
        echo "<script>
            Swal.fire({
            icon: 'success',
            title: ' $success',
                    }).then((result) => {
            window.location.href = 'lapangan.php';
        })
              </script>";
    } else {
        echo "<script>
        Swal.fire({
            icon: 'success',
            title: ' $eror',
                    }).then((result) => {
            window.location.href = 'lapangan.php';
        })
              </script>";
    }
}

if (isset($_POST['bUbah'])) {

    $ubah = mysqli_query($koneksi, "UPDATE field SET 
        nama = '$_POST[nama]',
        tipe = '$_POST[tipe]',
        priceSiang = '$_POST[siang]',
        priceMalam = '$_POST[malam]',        
        sts = '$_POST[status]'
        WHERE id = '$_POST[id]'
    ");
    // header('location: member.php');


    // header('location: member.php');

    $success = "Data Berhasil Diubah";
    $error = "Data Gagal Diubah";
    if ($ubah) {
        echo "<script>
            Swal.fire({
            icon: 'success',
            title: ' $success',
                    }).then((result) => {
            window.location.href = 'lapangan.php';
        })
              </script>";
    } else {
        echo "<script>
        Swal.fire({
            icon: 'success',
            title: ' $eror',
                    }).then((result) => {
            window.location.href = 'lapangan.php';
        })
              </script>";
    }
}


if (isset($_POST['bhapus'])) {

    $hapus = mysqli_query($koneksi, "DELETE FROM field
                WHERE id = '$_POST[id]'
            ");

    // header('location: member.php');

    $success = "Data Berhasil Dihapus";
    $error = "Data Gagal Dihapus";
    if ($hapus) {
        echo "<script>
            Swal.fire({
            icon: 'success',
            title: ' $success',
                    }).then((result) => {
            window.location.href = 'lapangan.php';
        })
              </script>";
    } else {
        echo "<script>
        Swal.fire({
            icon: 'success',
            title: ' $eror',
                    }).then((result) => {
            window.location.href = 'lapangan.php';
        })
              </script>";
    }
}


?>

    <div class="container-scroller">
        <!-- partial:../../partials/_navbar.html -->
        <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                <a class="navbar-brand brand-logo me-5" href="../../index.php"><img src="../../images/logo.svg"
                        class="me-2" alt="logo" /></a>
                <a class="navbar-brand brand-logo-mini" href="../../index.php"><img src="../../images/logo-mini.svg"
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
                            <img src="../../images/faces/face28.jpg" alt="profile" />
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
        <a class="nav-link" href="../../dashboard.html">
              <i class="ti-shield menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../tables/employe.php">
                <i class="ti-view-list-alt menu-icon"></i>
                <span class="menu-title">Data Karyawan</span>
            </a>
        </li>
          <li class="nav-item">
            <a class="nav-link" href="Tabel-Register.php">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Data Register</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Tabel-Transaksi.php">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Data Transaksi</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Tabel-Detailtransaksi.php">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Data Detail Transaksi</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../tables/lapangan.php">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Data Lapangan</span>
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

                                    <h4 class="card-title">Karyawan</h4>
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
                                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">Form Data
                                                        Karyawan</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <form action="" method="POST">
                                                <div class="modal-body">
                    <div class="mb-3">
                        <label for="" class='form-label'>Kode</label>
                        <input type="text" placeholder="Masukkan Kode Lapangan" name="id" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="" class='form-label'>Nama Lapangan</label>
                        <input type="text" placeholder="Masukkan Nama Lapangan" name="nama" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="" class='form-label'>Tipe</label>
                        <select name="tipe" id="" class='form-select'>
                            <option value="reguler" selected>Reguler</option>
                            <option value="jumbo">Jumbo</option>
                            <option value="rumput">Rumput</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="" class='form-label'>Harga Siang</label>
                        <select name="siang" id="" class='form-select'>
                            <option value="80000" selected>Rp 80.000</option>
                            <option value="110000">Rp 110.000</option>
                            <option value="125000">Rp 125.000</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="" class='form-label'>Harga Malam</label>
                        <select name="malam" id="" class='form-select'>
                            <option value="100000" selected>Rp 100.000</option>
                            <option value="130000">Rp 130.000</option>
                            <option value="145000">Rp 145.000</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="" class='form-label'>Status</label>
                        <select name="status" id="" class='custom-select'>
                            <option value="Tersedia" selected>Tersedia</option>
                            <option value="Disewa">Disewa</option>
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
                                <div class="table-responsive">
                                    <table class="table table-hover" id="karyawan">
                                        <thead>
                                        <tr>
                                            <td>No</td>
                                            <td>Kode</td>
                                            <td>Nama</td>
                                            <td>Type</td>
                                            <td>Harga Siang</td>
                                            <td>Harga Malam</td>
                                            <td>Status</td>
                                            <td>Kontrol</td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                            <?php 
                                            $no =  1;
                                            require 'connect.php';
                                            $query = mysqli_query($koneksi, "SELECT * FROM field ");
                                           while( $row = mysqli_fetch_array($query)) {
                                            $id=$row['id'];
                                            $nama = $row['nama'];
                                            $type = $row['tipe'];
                                            $siang = $row['priceSiang'];
                                            $malam = $row['priceMalam'];
                                            $status = $row['Sts'];
                                        
                                            ?>
                                            <tr>
                                            <td><?php echo $no++;?></td>
                                        <td><?php echo $id; ?></td>
                                        <td><?php echo $nama; ?></td>
                                        <td><?php echo $type; ?></td>
                                        <td><?php echo $siang; ?></td>
                                        <td><?php echo $malam; ?></td>
                                        <td><?php echo $status; ?></td>
                                                <td>
                                                    <a href="#" class="btn btn-warning rounded-circle"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#modalUbah<?= $no ?>">Edit</a>
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
                                                                Data Karyawan</h1>
                                                            <button type="button" class="btn-close"
                                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <form action="" method="POST">

                                                            <div class="modal-body">
                                                            <div class="mb-3">
                                                                <!-- <label for="" class='form-label'>Kode</label> -->
                                                                <input type="hidden" placeholder="Masukkan Kode Lapangan" name="id" class="form-control" value="<?=$id?>" id="id" readonly>
                                                            </div>
                    
                                                            <div class="mb-3">
                                                                <label for="" class='form-label'>Nama Lapangan</label>
                                                                <input type="text" placeholder="Masukkan Nama Lapangan" value="<?=$nama?>" name="nama" class="form-control" value required>
                                                            </div>
                    
                                                            <div class="mb-3">
                                                                <label for="" class='form-label'>Tipe</label>
                                                                <select name="tipe" value="<?=$type?>" id="" class='form-select'>
                                                                    <option <?php if($type == 'reguler'){echo "selected";}?>value="reguler">Reguler</option>
                                                                    <option <?php if($type == 'jumbo'){echo "selected";}?> value="jumbo">Jumbo</option>
                                                                    <option <?php if($type == 'rumput'){echo "selected";}?>value="rumput">Rumput</option>
                                                                </select>
                                                            </div>
                    
                                                            <div class="mb-3">
                                                                <label for="" class='form-label'>Harga Siang</label>
                                                                <select name="siang" id="" class='form-select'>
                                                                    <option <?php if($siang == '80000'){echo "selected";}?> value="80000">Rp 80.000</option>
                                                                    <option <?php if($siang == '100000'){echo "selected";}?> value="110000">Rp 110.000</option>
                                                                    <option <?php if($siang == '125000'){echo "selected";}?> value="125000">Rp 125.000</option>
                                                                </select>
                                                            </div>
                    
                                                            <div class="mb-3">
                                                                <label for="" class='form-label'>Harga Malam</label>
                                                                <select name="malam" id="" class='form-select'>
                                                                    <option <?php if($malam == '100000'){echo "selected";}?> value="100000" >Rp 100.000</option>
                                                                    <option <?php if($malam == '130000'){echo "selected";}?> value="130000">Rp 130.000</option>
                                                                    <option <?php if($malam == '145000'){echo "selected";}?>value="145000">Rp 145.000</option>
                                                                </select>
                                                            </div>
                    
                                                            <div class="mb-3">
                                                                <label for="" class='form-label'>Status</label>
                                                                <select name="status" id="" class='form-select'>
                                                                    <option <?php if($status == 'Tersedia'){echo "selected";}?> value="Tersedia">Tersedia</option>
                                                                    <option <?php if($status == 'Disewa'){echo "selected";}?> value="Disewa">Disewa</option>
                                                                </select>
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
                                                                Konfirmasi Hapus Data Lapangan</h1>
                                                            <button type="button" class="btn-close"
                                                                data-bs-dismiss="modal" aria-label="Close"></button>
                                                        </div>
                                                        <form action="" method="POST">
                                                            <div class="modal-body">
                                                                <input type="hidden" name="id" id="id"
                                                                    value="<?= $row['id'];  ?>">
                                                                <h5 class="text-center">Apakah anda yakin akan menghapus
                                                                    data ini ? <br>
                                                                    <span class="text-danger"><?= $row['id'] ?> -
                                                                        <?= $row['nama']  ?></span>
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
                                            <?php } ?>
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