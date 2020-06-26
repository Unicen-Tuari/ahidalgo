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

    
      
    
}

?>