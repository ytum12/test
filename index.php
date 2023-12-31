<?php
session_start();

if ($_SESSION['user']) {
    header('Location: profile.php');
}

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Авторизация</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
<style>
      #navbar ul{
        display: none;
        background-color: #e3e3e3;
        position: absolute;
        top: 100%;
      }
      #navbar li:hover ul { display: block; }
      #navbar, #navbar ul{
        margin: 0;
        padding: 0;
        list-style-type: none;
      }
      #navbar {
        height: 40px;
        background-color: #e3e3e3;
        padding-left: 25px;
        min-width: 470px;
      }
      #navbar li {
        float: left;
        position: relative;
        height: 100%;
      }
      #navbar li a {
      	font-size: %;
        font-family: Montserrat, sans-serif;
        display: block;
        padding: 10px;
        width: 130px;
        color: #000000;
        text-decoration: none;
        text-align: center;
      }
      #navbar ul li { float: none; }
      #navbar li:hover { background-color: #D3D3D3; }
      #navbar ul li:hover { background-color: #D3D3D3; }
    </style>

</head>



<body>
<div class="avto">
 <div class="texts">Авторизация</div>

<div class="bod">

<!-- Форма авторизации -->
<form action="vendor/signin.php" method="post">
    
        <label>Логин</label>
        <input type="text" name="login" placeholder="Введите свой логин"> 
        <label>Пароль</label>
        <input type="password" name="password" placeholder="Введите пароль">
<div class="vhod">
  <button class="custom-btn btn-15" type="submit">Войти</button>
        <p>
            У вас нет аккаунта? - <strong><a href="/register.php">зарегистрируйтесь</a>!</strong>
        </p>

        <?php
            if ($_SESSION['message']) {
                echo '<p class="msg"> ' . $_SESSION['message'] . ' </p>';
            }
            unset($_SESSION['message']);
        ?>
</div>
</div>
</div>
</body>
</html>