<?php

require_once "userController.php";
require_once "userModel.php";

class userModel{
private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=characters;charset=utf8', 'root', '');
    }

    function crearUsuario($email, $password){
        $sentencia = $this->db->prepare("INSERT INTO user(mail, password) VALUES (?, ?)");
        $sentencia -> execute(array($email, password_hash($password, PASSWORD_DEFAULT)));
    }

    function getUsuario($email){
        $sentencia = $this->db->prepare("SELECT * FROM user WHERE mail = ?");
        $sentencia -> execute(array($email));
        return $sentencia->fetch();
    }
}

?>