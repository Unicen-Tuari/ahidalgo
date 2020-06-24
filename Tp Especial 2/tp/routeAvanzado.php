<?php

require_once "configApp.php";
require_once "admin.php";
require_once "characterController.php";
require_once "characterModel.php";
require_once "characterView.php";

function parseUrl($url){
    $partesUrl = explode("/" , $url);

$arrayReturn[configApp::$ACTION] = $partesUrl[0];
$arrayReturn[configApp::$PARAMS] = isset($partesUrl[1]) ? array_slice($partesUrl,1) : null;

return $arrayReturn;

}

$urlData = parseUrl($_GET[configApp::$ACTION]);
$actionName = $urlData[configApp::$ACTION];

if(array_key_exists($actionName,configApp::$ACTIONS)){
    $params = $urlData[configApp::$PARAMS];

    $controllerMetodo = explode('#' , configApp::$ACTIONS[$actionName]); // characterController#index en configApp.php
    $controller = new $controllerMetodo[0]; // characterController en configApp.php
    $methodName = $controllerMetodo[1];// index, personajes, etc. en configApp.php

    if(isset($params) && $params != null){
        echo  $controller->$methodName($params);
    }else{
        echo $controller->$methodName();
    }
}else{
    echo $controller->index();
}
?>