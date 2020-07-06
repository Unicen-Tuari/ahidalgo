<?php
require_once "userController.php";
require_once "userModel.php";

class userView{
    private $smarty;

    function __construct(){
        $this->smarty = new Smarty;
    }

    function login(){
        $this->smarty->display('templates/user_login.tpl');
    }

    function registrarse(){
        $this->smarty->display('templates/user_registrarse.tpl');
    }
}

?>