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

    function getUsuario($usuario){
        $sentencia = $this->db->prepare("SELECT * FROM 'usuario WHERE 'usuario' = ?");
        $sentencia->execute(array($usuario));
        return $sentencia->fetch();
    }

    function getAlbum(){
        $sentencia = $this->db->prepare("SELECT * FROM 'discos WHERE 'disco' = ?");
        $sentencia->execute(array($usuario));
        return $sentencia->fetch();
    }
}

?>