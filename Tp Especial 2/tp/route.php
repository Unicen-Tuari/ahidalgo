<?php
require_once "index.php";
require_once "characters.php";
require_once "contacto.php";
require_once "creadores.php";
require_once "curiosidades.php";
require_once "indexOnline.php";
require_once "juego.php";

$action = $_GET['action'];

if($action == 'index'){
    echo index();
}elseif($action == 'personajes'){
    echo personajes();
}elseif($action == 'contacto'){
    echo contacto();
}elseif($action == 'creadores'){
    echo creadores();
}elseif($action == 'curiosidades'){
    echo curiosidades();
}elseif($action == 'veronline'){
    echo verOnline();
}elseif($action == 'juego'){
    echo juego();
}

?>