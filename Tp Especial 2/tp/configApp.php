<?php

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
        'admin' => 'characterController#admin',
        'newCharacter' => 'characterController#newCharacter',
        'deleteCharacter' => 'characterController#deleteCharacter',
        'login' => 'userController#login',
        'registrarse' => 'userController#registrarse',
        'registro' => 'userController#registro',
        'ingresar' => 'userController#ingresar',
        'logout' => 'userController#logout'
        
    ];
}

?>