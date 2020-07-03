<?php

require_once "adminController.php";
require_once "adminView.php";

class adminModel{
    private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=characters;charset=utf8', 'root', '');
    }

    function getCharacters(){
        $sentencia = $this->db->prepare( "select * from _character");
        $sentencia ->execute();
        return $sentencia->fetchAll();
    }

    function createCharacter(){
        $sentencia = $this->db->prepare( "INSERT INTO _character(name, description, hero_name, birthday, height, quirk, char_blood) VALUES (?,?,?,?,?,?,?)");
        $sentencia ->execute(array($_GET['name'], $_GET['description'], $_GET['hero_name'], $_GET['birthday'],$_GET['height'], $_GET['quirk'], $_GET['char_blood']));
    }
    
    function removeCharacter($id_character){
        $sentencia = $this->db->prepare( "DELETE FROM _character WHERE id_character = ?");
        $sentencia ->execute(array($id_character));    
    }

    function getBloodtype(){
        $sentencia = $this->db->prepare( "select * from bloodtype");
        $sentencia ->execute();
        return $sentencia->fetchAll();
    }

    function createBloodtype(){
        $sentencia = $this->db->prepare("INSERT INTO bloodtype (type_blood) values (?)");
        $sentencia -> execute(array($_GET['type_blood']));
    }

    function removeBloodtype($id_blood){
        $sentencia = $this->db->prepare("DELETE FROM bloodtype WHERE id_blood = ?");
        $sentencia -> execute(array($id_blood));
    }
}

?>