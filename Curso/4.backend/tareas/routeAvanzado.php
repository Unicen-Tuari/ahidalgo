<?php

require_once "configApp.php";

require_once "tareas.php";

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
    echo tareas();
}
?>