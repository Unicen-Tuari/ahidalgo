<?php

require_once "adminController.php";
require_once "adminModel.php";

class adminView{
    private $smarty;

    function __construct(){
        $this->smarty = new Smarty;
    }

    function mostrarAdmin($personajes, $tipoSangre){
        $this->smarty->assign('personajes', $personajes);
        $this->smarty->assign('tipoSangre' , $tipoSangre);
        $this->smarty->display('templates/adm_personajes.tpl');
    }

    function mostrarTipoSangre($tipoSangre){
        $this->smarty->assign('tipoSangre' , $tipoSangre);
        $this->smarty->display('templates/adm_tipoDeSangre.tpl');
    }
}

?>