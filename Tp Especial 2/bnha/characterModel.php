<?php

require_once "characterController.php";
require_once "characterView.php";

class characterModel{

    private $db;
    
    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=characters;charset=utf8', 'root', '');
    }

    function getCharacters(){
        $sentencia = $this->db->prepare("SELECT c.*, b.type_blood from _character c join bloodtype b on (c.char_blood = b.id_blood)");
        $sentencia ->execute();
        return $sentencia->fetchAll(PDO::FETCH_ASSOC);
    }
        
        function getBloodtype(){
            $sentencia = $this->db->prepare( "select * from bloodtype");
            $sentencia ->execute();
            return $sentencia->fetchAll();
        }
}

?>