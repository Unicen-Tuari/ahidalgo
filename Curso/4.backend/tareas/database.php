<?php



function obtenerTareas(){
    $db = new PDO('mysql:host=localhost;'.'dbname=todolistapp;charset=utf8', 'root', '');
    $sentencia = $db->prepare( "select * from tareas");
    $sentencia ->execute();
    return $sentencia->fetchAll();
}

?>