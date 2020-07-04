<?php

define('BASE_URL','//'.$_SERVER['SERVER_NAME'] . ':' .$_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');


    class configApp{
    public static $ACTION = "action";
    public static $PARAMS = "params";
    public static $ACTIONS = [
        'home' => 'characterController#index',
        'personajes' => 'characterController#personajes',
        'contacto' => 'characterController#contacto',
        'creadores' => 'characterController#creadores',
        'curiosidades' => 'characterController#curiosidades',
        'veronline' => 'characterController#veronline',
        'juego' => 'characterController#juego',
        'newCharacter' => 'adminController#newCharacter',
        'deleteCharacter' => 'adminController#deleteCharacter',
        'login' => 'userController#login',
        'registrarse' => 'userController#registrarse',
        'registro' => 'userController#registro',
        'ingresar' => 'userController#ingresar',
        'logout' => 'userController#logout',
        'admin' => 'adminController#admin',
        'tipoSangre' => 'adminController#tipoSangre',
        'newBloodtype' => 'adminController#newBloodtype',
        'deleteBloodtype' => 'adminController#deleteBloodtype'
        
    ];
}

?>