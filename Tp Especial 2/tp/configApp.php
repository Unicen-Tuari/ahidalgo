<?php

    class configApp{
    public static $ACTION = "action";
    public static $PARAMS = "params";
    public static $ACTIONS = [
        'home' => 'index',
        'personajes' => 'personajes',
        'contacto' => 'contacto',
        'creadores' => 'creadores',
        'curiosidades' => 'curiosidades',
        'veronline' => 'veronline',
        'juego' => 'juego',
        'admin' => 'admin',
        'newCharacter' => 'newCharacter',
        'deleteCharacter' => 'deleteCharacter'
    ];
}

?>