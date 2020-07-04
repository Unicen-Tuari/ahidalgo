<?php

require_once "characterController.php";
require_once "characterView.php";

class characterModel{

    private $db;
    
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=characters;charset=utf8', 'root', '');
    }

        function getCharacters(){
            $sentencia = $this->db->prepare( "select * from _character");
            $sentencia ->execute();
            return $sentencia->fetchAll();
        }
        
        function getBloodtype(){
            $sentencia = $this->db->prepare( "select * from bloodtype");
            $sentencia ->execute();
            return $sentencia->fetchAll();
        }
}

?>