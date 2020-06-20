<?php

require_once "configApp.php";

require_once "index.php";
require_once "characters.php";
require_once "creadores.php";
require_once "curiosidades.php";
require_once "indexOnline.php";
require_once "juego.php";
require_once "admin.php";

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
    $methodName = configApp::$ACTIONS[$actionName];

    if(isset($params) && $params != null){
        echo $methodName($params);
    }else{
        echo $methodName();
    }
}else{
    echo index();
}
?>