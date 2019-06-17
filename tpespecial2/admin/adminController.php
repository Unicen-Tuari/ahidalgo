<?php

require_once('adminModel.php');
require_once('adminView.php');

class adminController{

    private $model;
    private $view;

    function construct(){
        $this->view = new adminView();
        $this->model = new adminModel();
    }

    function login(){
        return $this->view->login();
    }

    function registrarse(){
        return $this->view->registrarse();
    }

    function registro(){
        if($_POST["email"] == ""){
            echo 'Por favor inserte un email válido';
            return;
        }
        if($_POST["password"] == ""){
            echo 'Por favor inserte una contraseña';
            return;
        }
        $this->model->crearUsuario($_POST["email"], $_POST["password"]);
        header("Location: login");

    }
    function ingresar(){
        $email = $_POST["email"];
        $password = $_POST["password"];
        $usuario = $this->model->getUsuario($email);
        if(password_verify($password, $usuario["password"])){
            session_start();
            $_SESSION['email'] = $email;
            header("Location: admin");
        }
        else{
            header('Location: login');
        }
    }

    function logout(){
        session_start();
        session_destroy();
        header('Location: admin');
    }
}
?>