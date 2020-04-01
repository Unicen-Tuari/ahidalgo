<?php

function conectar(){
    $db = new PDO('mysql:host=localhost;'.'dbname=prog-web;charset=utf8', 'root', '');
    return $db;
}

function getAlbum($id){
    $db = conectar();
    $sentencia = $db->prepare("SELECT * FROM `discos` WHERE `id` = ?");
    $sentencia->execute(array($id));
    return $sentencia->fetch();
}

function crearAlbum($titulo){
    $db = conectar();
    $sentencia = $db->prepare( "INSERT INTO `discos` (`disco`) VALUES (?,?)");
    $sentencia->execute(array($titulo));
}

function borrarAlbum($id){
    $db = conectar();
    $sentencia = $db->prepare("DELETE FROM `discos` WHERE `discos`.`id` = ?");
    $sentencia->execute(array($id));
}

?>