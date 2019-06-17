<?php

class adminModel{
    private $db;

    function construct(){
        $this->$db = new PDO('mysql:host=localhost;'.'dbname=prog-web;charset=utf8', 'root', '');
    }

    function crearUsuario($email,$password){
        $sentencia = $this->db->prepare("INSERT INTO 'usuario'('email', 'password') VALUES (?,?)");
        $sentencia->execute(array($email, password_hash($password, PASSWORD_DEFAULT)));
    }

    function getUsuario($email){
        $sentencia = $this->db->prepare("SELECT * FROM 'usuario WHERE 'mail' = ?");
        $sentencia->execute(array($email));
        return $sentencia->fetch();
    }
}

?>