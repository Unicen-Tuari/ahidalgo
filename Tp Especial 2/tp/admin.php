<?php
require_once "database.php";
require_once "libs/Smarty.class.php";
function admin(){
  $personajes = getCharacters();
  $smarty= new Smarty();
  $smarty->assign('personajes', $personajes);
  $smarty->display('templates/admin.tpl');
}

function newCharacter(){
  createCharacter();
  header("location: /tp/admin");
}

function deleteCharacter($params){
  removeCharacter($params[0]);
  $personajes = getCharacters();
  $smarty= new Smarty();
  $smarty->assign('personajes', $personajes);  
  $smarty->display('templates/admin.tpl');
  header("location: /tp/admin");
}

function contacto(){
  $smarty= new Smarty();
  $smarty->display('templates/contacto.tpl');
}

function personajes(){
  $personajes = getCharacters();
  $smarty= new Smarty();
  $smarty->assign('personajes', $personajes);
  $smarty->display('templates/personajes.tpl');
}

function creadores(){
  $smarty= new Smarty();
  $smarty->display('templates/creadores.tpl');
}

function juego(){
  $smarty= new Smarty();
  $smarty->display('templates/juego.tpl');
}

function curiosidades(){
  $smarty= new Smarty();
  $smarty->display('templates/curiosidades.tpl');
}

function index(){
  $smarty= new Smarty();
  $smarty->display('templates/index.tpl');
}

function veronline(){
  $smarty= new Smarty();
  $smarty->display('templates/veronline.tpl');
}

?>