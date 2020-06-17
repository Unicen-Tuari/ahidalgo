<?php

function obtenerPersonajes(){
    $db = new PDO('mysql:host=localhost;'.'dbname=personaje;charset=utf8', 'root', '');
    $sentencia = $db->prepare( "select * from personajes");
    $sentencia ->execute();
    return $sentencia->fetchAll();
}

?>