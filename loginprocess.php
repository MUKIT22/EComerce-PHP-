<?php
session_start();
require_once 'config/connect.php';

if(isset($_POST) & !empty($_POST)){
  $email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
  $password = ($_POST['password']);
  $sql = "SELECT * FROM users WHERE email='$email'";
  $result = mysqli_query($connection, $sql) or die(mysqli_error($connection));

  $r = mysqli_fetch_assoc($result);

  if(password_verify($password,$r["password"])){

    $_SESSION['customer'] = $email;
    $_SESSION['customerid'] = $r['id'];
    header("location:checkout.php");
  }
  else{

    header("location: login.php?message=1");
  }

}


?>
