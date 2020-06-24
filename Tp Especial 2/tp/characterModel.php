<?php
require_once "characterController.php";
require_once "characterView.php";
class characterModel{

    private $db;
    
    function _construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=characters;charset=utf8', 'root', '');
    }

        function getCharacters(){
            $sentencia = $this->db->prepare( "select * from _character");
            $sentencia ->execute();
            return $sentencia->fetchAll();
        }
        
        function createCharacter(){
            $sentencia = $this->db->prepare( "INSERT INTO _character(name, fk_bloodtype, description, hero_name, birthday, height, quirk) VALUES (?,?,?,?,?,?,?)");
            $sentencia ->execute(array($_GET['name'], $_GET['bloodtype'], $_GET['description'], $_GET['hero_name'], $_GET['birthday'],$_GET['height'], $_GET['quirk']));
        }
        
        function removeCharacter($id_character){
            $sentencia = $this->db->prepare( "DELETE FROM _character WHERE id_character = ?");
            $sentencia ->execute(array($id_character));    
        }

}

?>