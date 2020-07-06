<?php

require_once "userView.php";
require_once "userModel.php";

class userController{

    private $view;
    private $model;

    function __construct(){
        $this->view = new userView();
        $this->model = new userModel();
    }

    function login(){
        $this->view->login();
    }

    function registrarse(){
        $this->view->registrarse();
    }

    function registro(){
        if($_POST["email"]==""){
            echo "El formato del Email no es válido";
            return;
        }

        if($_POST["password"]==""){
            echo "Contraseña Incorrecta";
            return;
        }

        $this->model->crearUsuario($_POST["email"], $_POST["password"]);
        header("location: login");
}

    function ingresar(){
        $email = $_POST["email"];
        $password = $_POST["password"];

        $user = $this->model->getUsuario($email);
        $hash = $user["password"];

        if(password_verify($password, $hash)){
            session_start();
            $_SESSION["nombre"] = $user["mail"];
           header("location: admin");
        }else{
            header("location: login");
    }
}

    function logout(){
        session_start();
        session_destroy();
        header("location: login");
    }

}

?>