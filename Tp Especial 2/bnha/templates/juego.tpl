{include file="header.tpl"}
<body class="body-home">
{include file="navbar.tpl"}

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
{include file="footer.tpl"}