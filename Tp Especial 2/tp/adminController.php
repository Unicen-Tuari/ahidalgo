<?php

require_once "adminView.php";
require_once "adminModel.php";

class adminController{
    private $view;
    private $model;

    function __construct(){
        $this->view = new adminView();
        $this->model = new adminModel();

        session_start();
        if(!isset($_SESSION["nombre"])){
          header("location : login");
          die();
        }
    }

    function admin(){
        $personajes = $this->model->getCharacters();
        $this->view->mostrarAdmin($personajes);
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
}


?>