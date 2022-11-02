<?php 
$server     = "localhost";
$username   = "root";
$password   = "";
$db         = "futsal";
$koneksi    = mysqli_connect($server, $username, $password, $db);
//passtikan urutan pemanggilan variabel nya sama.

//untuk cekjika koneksi gagal ke database
if(mysqli_connect_errno()) {
    echo "gagal";
}else {
    echo "";
}

 ?>