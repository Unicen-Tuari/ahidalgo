<?php
define('ACTION', 0);
require_once 'config/configApp.php';

function parseUrl($url){
    $url_exploded = explode("/", $url);
    $arrayReturn[configApp::$ACTION] = $url_exploded[0];
    $arrayReturn[ConfigApp::$PARAMS] = isset($urlExploded[1]) ? array_slice($urlExploded,1) : null;
    return $arrayReturn;
}

if(isset($_GET['action'])){
    $urlData = parseUrl($_GET['action']);
        $action = $urlData[configApp::$ACTION];
            if(array_key_exists($action, configApp::$ACTIONS)){
                $params = $urlData[ConfigApp::$PARAMS];
                $metodo = ConfigApp::$ACTIONS[$action];
                if(isset($params) &&  $params != null){
                    echo $metodo($params);
                }
                else{
                    echo $metodo();
                }
            }
}    

?>