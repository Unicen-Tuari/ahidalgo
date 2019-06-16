<?php

class configApp{
    public static $ACTION = 'action';
    public static $PARAMS = 'params';
    public static $ACTIONS = [
        'login' => 'adminController#login',
        'registrarse' => 'adminController#registrarse',
        'registro' => 'adminController#registro',
        'ingresar' => 'adminController#ingresar'
    ]
}


?>