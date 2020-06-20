{include file="header.tpl"}
    <body class="body-home">
    <div>
        <nav>
            <div>
            <ul class="ulhome">
            <img src="./img/home1.png" class="home-img-1" alt="Logo">  
            <li class="home-list"><a href="../tp/home">HOME</a></li>
            <li class="home-list"><a href="../tp/creadores">CREADORES</a></li>
            <li class="home-list"><a href="../tp/personajes">PERSONAJES</a></li>
            <li class="home-list"><a href="../tp/curiosidades">CURIOSIDADES</a></li>
            <li class="home-list"><a href="../tp/veronline">VER ONLINE</a></li>
            <li class="home-list"><a href="../tp/contacto">CONTACTANOS</a></li>
            <li class="home-list"><a href="../tp/juego">JUEGO</a></li>
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
    </html>