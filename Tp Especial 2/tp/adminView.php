<?php

require_once "adminController.php";
require_once "adminModel.php";

class adminView{
    private $smarty;

    function __construct(){
        $this->smarty = new Smarty;
    }

    function mostrarAdmin($personajes){
        $this->smarty->assign('personajes', $personajes);
        $this->smarty->display('templates/admin.tpl');
    }
}

?>