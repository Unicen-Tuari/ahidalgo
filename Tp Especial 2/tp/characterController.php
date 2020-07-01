<?php

require_once "characterView.php";
require_once "characterModel.php";

class characterController{

    private $view;
    private $model;

    function __construct(){
        $this->view = new characterView();
        $this->model = new characterModel();
    }

    function personajes(){
        $personajes = $this->model->getCharacters();
        $this->view->mostrarPersonaje($personajes);
    }

    function index(){
        $this->view->mostrarIndex();
    }

      function contacto(){
        $this->view->mostrarContacto();
      }

      function creadores(){
        $this->view->mostrarCreadores();
      }
      
      function juego(){
        $this->view->mostrarJuego();
      }

      function curiosidades(){
        $this->view->mostrarCuriosidades();
      }

      function veronline(){
        $this->view->mostrarVerOnline();
      }
          
}

?>