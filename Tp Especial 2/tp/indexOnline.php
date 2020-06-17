<?php

function verOnline(){
    $online = '<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/main.css">
        <title>Boku No Heroz</title>
    </head>
    <body>
        <div>
            <nav>
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
            </nav>
        </div>
    
    
    <div class="div-fondo">
        <h1>VER ONLINE</h1>
                <p class="texto-gral">
                    Haz clic en los enlaces, relajate y disfruta!
                </p>
                <img src="./img/publi1.jpg" alt="publicidad" class="img-publi-1">
    <div class="div-enlaces">
        <p class="titulo-serie"> Serie </p>
            <ul class="ul-veronline">
                <a href="https://animeflv.net/anime/5148/boku-no-hero-academia-2016" target="blank"><li class="link">Temporada 1 - 2016 (15 capítulos)</li></a>
                <a href="https://animeflv.net/anime/5147/boku-no-hero-academia-2nd-season" target="blank"><li class="link">Temporada 2 - 2017 (25 capítulos)</li></a>
                <a href="https://animeflv.net/anime/5146/boku-no-hero-academia-3rd-season" target="blank"><li class="link">Temporada 3 - 2018 (25 capítulos)</li></a>
                <a href="https://animeflv.net/anime/5659/boku-no-hero-academia-4th-season" target="blank"><li class="link">Temporada 4 - 2019 (25 capítulos)</li></a>
            </ul>
        <p class="titulo-serie">Peliculas</p>
            <ul class="ul-veronline">
                <a href="https://es.wikipedia.org/wiki/My_Hero_Academia:_Two_Heroes" target="blank"><li class="link">Two Heroes - 2018 (Canonica)</li></a>
                <a href="https://en.wikipedia.org/wiki/My_Hero_Academia:_Heroes_Rising" target="blank"><li class="link">Heroes Rising - 2019 (No Canonica)</li></a>
            </ul>
    </div>
            <img src="./img/publi3.jpg" alt="publicidad" class="img-publi-2">
    </div>
    </body>
    </html>';

return $online;
}
?>