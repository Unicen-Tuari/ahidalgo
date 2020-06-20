{include file="header.tpl"}
    <body>
        <div>
            <nav>
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
            </nav>
        </div>
    <div class="div-fondo-pers">
        <h1>PERSONAJES</h1>
        <p class="texto-gral">
            Los personajes son parte vital de la esencia de cualquier anime. Aquí encontrarás
            historias, fotos y estadísticas de los mismos. Si consideras una buena idea que agreguemos
             ciertos detalles en esta sección, háznoslo saber en la sección de contacto.
        </p>

   {foreach $personajes item=personaje} 
        <div class="nombre-pers">
<p class="fuente-pers">{$personaje['name']}</p>
        </div>

        <div class="tabla-pers">
            <div class="imagen">
            <img src="./img/no_disponible.jpg" alt="Izuku Midoriya" class="img-pers">
            </div>
            <div>
            <table>
                <tbody>
                    <tr>
                        <td class="tabla-head">Nombre De Héroe</td>
                        <td>{$personaje['hero_name']}</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Fecha De Nacimiento</td>
                        <td>{$personaje['birthday']}</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Altura</td>
                        <td>{$personaje['height']}</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Quirk</td>
                        <td>{$personaje['quirk']}</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Tipo de Sangre</td>
                        <td>{$personaje['fk_bloodtype']}</td>
                    </tr>
                </tbody>
            </table>
        </div>
            <div class="texto-pers">
                <p class="desc-pers">{$personaje['description']}</p>
            </div>
        </div>
        {/foreach}    
    
    </div>
{include file="footer.tpl"}