<?php

    $connect = mysqli_connect('localhost', 'root', '', 'lol');

    if (!$connect) {
        die('Error connect to DataBase');
    }