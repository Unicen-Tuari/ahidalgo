<?php

function conectar(){
    $db = new PDO('mysql:host=localhost;'.'dbname=prog-web;charset=utf8', 'root', '');
    return $db;
}


?>