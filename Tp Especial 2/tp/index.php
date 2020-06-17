<?php

function index(){
    $indice = '<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/main.css">
        <title>Boku No Heroz</title>
    </head>
    <body class="body-home">
    <div>
        <nav>
            <div>
            <ul class="ulhome">
            <img src="./img/home1.png" class="home-img-1" alt="Logo">  
            <li class="home-list"><a href="home">HOME</a></li>
            <li class="home-list"><a href="creadores">CREADORES</a></li>
            <li class="home-list"><a href="personajes">PERSONAJES</a></li>
            <li class="home-list"><a href="curiosidades">CURIOSIDADES</a></li>
            <li class="home-list"><a href="veronline">VER ONLINE</a></li>
            <li class="home-list"><a href="contacto">CONTACTANOS</a></li>
            <li class="home-list"><a href="juego">JUEGO</a></li>
            <img src="./img/home1.png" class="home-img-2" alt="Logo">
            </ul>
         </div>
        </nav>
    </div>
    
    <div class="div-intro">
        <p class="texto-intro-1">
            Bienvenido a Boku No Heroz!
        </p>
        <p class="texto-intro-2">
            Aquí encontrarás datos, curiosidades, estadísticas y todo tipo de información relevante
            sobre el universo de Boku No Hero Academia. Gracias por tu visita, esperamos que te guste!
        </p>
    </div>
    
    <div class="div-intro-2">
        <p class="texto-intro-3">
            Descubre con qué personaje de BNHA te identificas más
        </p>
        <button class="boton-intro" id="generarPers">
            Tu personaje es:
        </button>
        <p class="texto-personaje" id="personaje">
        </p>
    </div>
    
    <script src="./js/randomCharacter.js"></script>
    </body>
    </html>';

return $indice;
}

?>