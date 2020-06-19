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

?>