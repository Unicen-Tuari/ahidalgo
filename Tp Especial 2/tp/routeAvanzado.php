<?php

require_once "configApp.php";
require_once "characterController.php";
require_once "characterModel.php";
require_once "characterView.php";
require_once "userController.php";
require_once "userModel.php";
require_once "userView.php";
require_once "adminView.php";
require_once "adminController.php";
require_once "adminModel.php";

function parseUrl($url){
    $partesUrl = explode("/" , $url);

$arrayReturn[configApp::$ACTION] = $partesUrl[0];
$arrayReturn[configApp::$PARAMS] = isset($partesUrl[1]) ? array_slice($partesUrl,1) : null;

return $arrayReturn;

}

$urlData = parseUrl($_GET[configApp::$ACTION]);
$actionName = $urlData[configApp::$ACTION];
$actions = configApp::$ACTIONS;

if(array_key_exists($actionName,$actions)){

    $params = $urlData[configApp::$PARAMS];
    $controllerMetodo = explode('#' , $actions[$actionName]); // characterController#index en configApp.php
    $controller = new $controllerMetodo[0]; // characterController en configApp.php
    $methodName = $controllerMetodo[1];// index, personajes, etc. en configApp.php

    if(isset($params) && $params != null){
        echo  $controller->$methodName($params);
    }else{
        echo $controller->$methodName();
    }
}else{
    header("location: home");
}
?>