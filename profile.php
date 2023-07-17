<?php
session_start();
if (!$_SESSION['user']) {
    header('Location: /');
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Личный кабинет</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/profile.css">
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
    <input class="menu-icon" type="checkbox" id="menu-icon" name="menu-icon"/>
    <label for="menu-icon"></label>
    <nav class="nav">       
        <ul class="pt-5">
            <li><a href="main.php">Главная страница</a></li>
            <li><a href="ii.php">Примеры ИИ</a></li>
            <li><a href="vendor/logout.php" class="button">Выход</a></li>
        </ul>
    </nav>



    <h2><div class="texts">Личный кабинет</div></h2>
 <br><br><br>
    <div class="lich">
        <!-- Профиль -->
    <form>
        
        <h3 style="margin: 10px 0;">Приветсвую <?= $_SESSION['user']['full_name'] ?></h3>
    </form>
</div>
<div class="coment">
<h3>Оствьте коментарий</h3>
<form action="vendor/coment.php" method="post">
<label>Введите имя</label><br>
        <input type="text" name="name" placeholder="Пример Вася"><br>
<label>Введите сообщение</label><br>
        <input type="message" name="sms" placeholder="Cообщение">

<div class="vhod">
  <button class="custom-btn btn-15" type="submit">Отправить</button>
</div>
</div>
</form>
</body>
</html> 