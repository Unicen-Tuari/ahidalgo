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
            if(isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 300)){
            header("location: logout");
            die();
            }
            $_SESSION["LAST_ACTIVITY"] = time();
        }
    }

    function admin(){
        $personajes = $this->model->getCharacters();
        $tipoSangre = $this->model->getBloodtype();
        $this->view->mostrarAdmin($personajes, $tipoSangre);
    }

    function newCharacter(){
        $this->model->createCharacter();
        header("location: /bnha/admin");
    }

    function deleteCharacter($params){
        $this->model->removeCharacter($params[0]);
        header("location: /bnha/admin");
        $personajes = $this->model->getCharacters();
        $this->view->mostrarAdmin($personajes);
      }

    function tipoSangre(){
        $tipoSangre = $this->model->getBloodtype();
        $this->view->mostrarTipoSangre($tipoSangre);
    }

    function newBloodtype(){
        $this->model->createBloodtype();
        header("location: /bnha/tipoSangre");
    }

    function deleteBloodtype($id_blood){
        $this->model->removeBloodtype($id_blood[0]);
        header("location: /bnha/tipoSangre");
        $tipoSangre = $this->model->getBloodtype();
        $this->view->mostrarTipoSangre($tipoSangre);
    }
}


?>