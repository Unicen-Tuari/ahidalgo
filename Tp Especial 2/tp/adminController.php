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
            header("location: login");
            die();
        }else{
            if(isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 10)){
            header("location: logout");
            die();
            }
            $_SESSION["LAST_ACTIVITY"] = time();
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