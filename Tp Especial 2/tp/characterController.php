<?php

require_once "characterView.php";
require_once "characterModel.php";

class characterController{

    private $view;
    private $model;

    function _construct(){
        $this->view = new characterView();
        $this->model = new characterModel();
    }

    function personajes($params){
        $personajes = $this->model->getCharacters($params[0]);
        $this->view->mostrarPersonaje($personajes);
    }

    function index(){
        $this->view->mostrarIndex();
    }

    function newCharacter(){
        $this->model->createCharacter();
        header("location: /tp/admin");
    }

    function deleteCharacter($params){
        $this->model->removeCharacter($params[0]);
        header("location: /tp/admin");
        $personajes = $this->model->getCharacters();
        $this->view->mostrarAdmin($personajes);
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