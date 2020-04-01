<?php

require_once 'database.php';
require('libs/Smarty.class.php');

function album(){
    $album = getAlbum();
    $smarty = new Smarty();
    $base_url = 'http://'.$_SERVER['SERVER_NAME'] . dirname($_SERVER['PHP_SELF']).'/';
    $smarty->assign('base_url' , $base_url);
    $smarty->assign('album' , $album);
    return $smarty->display('templates/index.tpl');
}

function borrar($params){
    borrarAlbum($params[0]);
    header("Location: ../");
  }

?>