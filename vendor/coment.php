<?php

    session_start();
    require_once 'connect.php';

    $name = $_POST['name'];
    $sms = $_POST['sms'];


        mysqli_query($connect, "INSERT INTO `coment` (`id`, `name`, `sms`) VALUES (NULL, '$name', '$sms')");

        $_SESSION['message'] = 'Спасибо за отзыв!';
        header('Location: ../index.php');

        
?>
