<?php

require_once('adminModel.php');
require_once('adminView.php');

class adminController{

    private $model;
    private $view;

    function construct(){
        $this->model = new adminView();
        $this->model = new adminModel();
    }
}
?>