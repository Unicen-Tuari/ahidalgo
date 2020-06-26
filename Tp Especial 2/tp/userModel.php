<?php

require_once "userController.php";
require_once "userModel.php";

class userModel{
private $db;

    function __construct(){
        $this->db = new PDO('mysql:host=localhost;'.'dbname=characters;charset=utf8', 'root', '');
    }
}

?>