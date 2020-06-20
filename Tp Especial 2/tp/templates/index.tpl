{include file="header.tpl"}
    <body class="body-home">
{include file="navbar.tpl"}

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
{include file="footer.tpl"}