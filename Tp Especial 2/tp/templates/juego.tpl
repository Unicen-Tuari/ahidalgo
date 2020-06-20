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
    
    <div class="juego-gral">
    <div class="div-juego-0">
        <div class="div-juego-1">
            <h1 class="titulo-juego">MINIJUEGO</h1>
        </div>
        <div class="div-juego-2">
            <p></p>
            Haz clic en el botón de abajo para seleccionar aleatoriamente
            dos personajes, luego haz clic en BATALLA y que gane el mejor!
        </div>
        <div class="div-juego-3">
            <button class="generar-personajes" id="botonPersonajes">
                GENERAR PERSONAJES
            </button>
        </div>
        <div class="div-juego-3">
            <button class="generar-batalla" id="botonBatalla">
                BATALLA
            </button>
        </div>
    
            <div class="div-batalla-1">
                <div>
                <p class="personaje" id="personaje1">
                    PERSONAJE 1
                </p>
                <p class="personaje-vs">
                    VS
                </p>
                <p class="personaje" id="personaje2">
                    PERSONAJE 2
                </p>
                </div>
                <div>
                    <p class="personaje-resultado" id="resultado">
                        Resultado!
                    </p>
                </div>
            </div>
    
    </div>
    </div>
    <script src="./js/miniGame.js"></script>
    </body>
    </html>