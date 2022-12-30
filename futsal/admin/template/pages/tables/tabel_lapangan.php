<?php
require ("koneksi.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>RoyalUI Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../../css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/favicon.png" />
  <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap4.min.css">
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <!-- <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap4.min.js"></script> -->


</head>

<body>
  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo me-5" href="../../index.html"><img src="../../images/logo.svg" class="me-2"
            alt="logo" /></a>
        <a class="navbar-brand brand-logo-mini" href="../../index.html"><img src="../../images/logo-mini.svg"
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
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="messageDropdown">
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
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="notificationDropdown">
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
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
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
            <a class="nav-link" href="../tables/basic-table.html">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Tables</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../tables/tabel_lapangan.php">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Lapangan</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../tables/Tabel-Transaksi.php">
              <i class="ti-view-list-alt menu-icon"></i>
              <span class="menu-title">Transaksi</span>
            </a>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <!-- <div class="main-panel">
        <div class="content-wrapper">
          <div class="grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Field</h4>
                <!-- <p class="card-description">
                  Add class <code>.table-hover</code>
                </p> -->
              <!-- <div class="table-responsive">
                <div class="card-body">
                            <div class="table-responsive">
                                <table id="example" class="table table-bordered table-striped"  width="100%" cellspacing="0">
                               <thead>
                               <tr>
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
                                        $query = "SELECT * FROM field";
                                        $result = mysqli_query($koneksi, $query);
                                        $no = 1;
                                        // if($sesLvl == 1){
                                        //     $dis = "";
                                        // }else{
                                        //     $dis = "disabled";
                                        // }

                                     while ($row = mysqli_fetch_array($result)){
                                            $id=$row['id'];
                                            $nama = $row['nama'];
                                            $type = $row['tipe'];
                                            $siang = $row['price-siang'];
                                            $malam = $row['price-malam'];
                                            $status = $row['sts'];
                                        ?>
                                    <tr>
                                        <td><?php echo $id; ?></td>
                                        <td><?php echo $nama; ?></td>
                                        <td><?php echo $type; ?></td>
                                        <td><?php echo $siang; ?></td>
                                        <td><?php echo $malam; ?></td>
                                        <td><?php echo $status; ?></td>
                
                                        <td>
                                        <a href="edit_lap.php?op=edit&id=<?php echo $row['id'];?>" class="btn btn-primary btn-circle">
                                            <i class="fas fa-pen">EDIT</i> 
                                        </a> 
                                        
                                        <a href="#" class="btn btn-danger btn-circle <?php echo $dis;?>" onClick="confirmModal('hapus.php?&id=<?php echo $row['id']; ?>');">
                                            <i class="fas fa-trash">HAPUS</i>
                                        </a> 
                                        </td>
                                    </tr>
                                    <?php
                                    $no++;        
                                    } ?>
                                   </tbody>
                                </table>
                            </div>
                        </div>
                  <div><a href="add_lap.php" class="btn btn-secondary">Add Field</a></div>
                </div>
              </div> -->
            </div>
          </div>
        </div>
      </div> -->
      <div class="container"> 

        <div class="table-responsive"> 
            
        <table id="example" class="table table-bordered table-striped"  width="100%" cellspacing="0">
            <thead>
                <tr>
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
                                        $query = "SELECT * FROM field";
                                        $result = mysqli_query($koneksi, $query);
                                        $no = 1;
                                        // if($sesLvl == 1){
                                        //     $dis = "";
                                        // }else{
                                        //     $dis = "disabled";
                                        // }
                                        
                                        while ($row = mysqli_fetch_array($result)){
                                            $id=$row['id'];
                                            $nama = $row['nama'];
                                            $type = $row['tipe'];
                                            $siang = $row['price-siang'];
                                            $malam = $row['price-malam'];
                                            $status = $row['sts'];
                                            ?>
                                    <tr>
                                        <td><?php echo $id; ?></td>
                                        <td><?php echo $nama; ?></td>
                                        <td><?php echo $type; ?></td>
                                        <td><?php echo $siang; ?></td>
                                        <td><?php echo $malam; ?></td>
                                        <td><?php echo $status; ?></td>
                                        
                                        <td>
                                            <a href="edit_lap.php?op=edit&id=<?php echo $row['id'];?>" class="btn btn-primary btn-circle">
                                                <i class="fas fa-pen">EDIT</i> 
                                            </a> 
                                            
                                            <a href="#" class="btn btn-danger btn-circle <?php echo $dis;?>" onClick="confirmModal('hapus.php?&id=<?php echo $row['id']; ?>');">
                                                <i class="fas fa-trash">HAPUS</i>
                                            </a> 
                                        </td>
                                    </tr>
                                    <?php
                                    $no++;        
                                } ?>
                                   </tbody>
                                   
                                </table>
                            </div>
                    </div>
    </div>
  </div>
    
    <!-- content-wrapper ends -->
    <!-- partial:../../partials/_footer.html -->
    <footer class="footer">
      <div class="d-sm-flex justify-content-center justify-content-sm-between">
        <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © <a
            href="https://www.bootstrapdash.com/" target="_blank">bootstrapdash.com </a>2021</span>
        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Only the best <a
            href="https://www.bootstrapdash.com/" target="_blank"> Bootstrap dashboard </a> templates</span>
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
  <script src="../../vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/template.js"></script>
  <script src="../../js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <!-- End custom js for this page-->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
        $(document).ready(function() {
            $('#example').DataTable();
        });
    </script>
</body>

</html>