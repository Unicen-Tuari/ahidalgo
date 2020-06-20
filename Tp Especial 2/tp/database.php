<?php

function getCharacters(){
    $db = new PDO('mysql:host=localhost;'.'dbname=characters;charset=utf8', 'root', '');
    $sentencia = $db->prepare( "select * from _character");
    $sentencia ->execute();
    return $sentencia->fetchAll();
}

function createCharacter(){
    $db = new PDO('mysql:host=localhost;'.'dbname=characters;charset=utf8', 'root', '');
    $sentencia = $db->prepare( "INSERT INTO _character(name, fk_bloodtype, description) VALUES (?,?,?)");
    $sentencia ->execute(array($_GET['name'], $_GET['bloodtype'], $_GET['description']));
}

function removeCharacter($id_character){
    $db = new PDO('mysql:host=localhost;'.'dbname=characters;charset=utf8', 'root', '');
    $sentencia = $db->prepare( "DELETE FROM _character WHERE id_character=?");
    $sentencia ->execute(array($id_character));    
}
?>