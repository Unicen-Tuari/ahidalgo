<?php

require_once "libs/Smarty.class.php";
require_once "characterController.php";
require_once "characterModel.php";

class characterView{
    private $smarty;

    function __construct(){
        $this->smarty = new Smarty;
    }

    function mostrarPersonaje($personajes){
        $this->smarty->assign('personajes', $personajes);
        $this->smarty->display('templates/personajes.tpl');
      }

      function mostrarAdmin($personajes){
        $this->smarty->assign('personajes', $personajes);
        $this->smarty->display('templates/admin.tpl');
      }

      function mostrarIndex(){
        $this->smarty->display('templates/index.tpl');
      }

      function mostrarContacto(){
        $this->smarty->display('templates/contacto.tpl');
      }

      function mostrarCreadores(){
        $this->smarty->display('templates/creadores.tpl');
      }

      function mostrarJuego(){
        $this->smarty->display('templates/juego.tpl');
      }

      function mostrarCuriosidades(){
        $this->smarty->display('templates/curiosidades.tpl');
      }
      function mostrarVerOnline(){
        $this->smarty->display('templates/veronline.tpl');
      }
}


?>