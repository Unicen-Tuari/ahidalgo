{include file="header.tpl"}

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
    
        <div class="nombre-pers">
{foreach $personajes item=personaje}
<p class="fuente-pers">{$personaje['name']}</p>
        </div>
        {/foreach}
        <div class="tabla-pers">
            <div class="imagen">
            <img src="./img/personaje1.jpg" alt="Izuku Midoriya" class="img-pers">
            </div>
            <div>
            <table>
                <tbody>
                    <tr>
                        <td class="tabla-head">Nombre De Héroe</td>
                        <td>Deku</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Fecha De Nacimiento</td>
                        <td>15 de Julio</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Altura</td>
                        <td>166cm</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Quirk</td>
                        <td>One For All</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Tipo de Sangre</td>
                        <td>0</td>
                    </tr>
                </tbody>
            </table>
        </div>
            <div class="texto-pers">
                <p class="desc-pers">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
                dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt 
                mollit anim id est laborum</p>
            </div>
        </div>
    
        <div class="nombre-pers">
            <p class="fuente-pers">Katsuki Bakugo</p>
        </div>
    
        <div class="tabla-pers">
            <div class="imagen">
            <img src="./img/personaje2.jpg" alt="Katsuki Bakugo" class="img-pers">
            </div>
            <div>
            <table>
                <tbody>
                    <tr>
                        <td class="tabla-head">Nombre De Héroe</td>
                        <td>Ground Zero</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Fecha De Nacimiento</td>
                        <td>20 de Abril</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Altura</td>
                        <td>172cm</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Quirk</td>
                        <td>Explosión</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Tipo de Sangre</td>
                        <td>A</td>
                    </tr>
                </tbody>
            </table>
        </div>
            <div class="texto-pers">
                <p class="desc-pers">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
                dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt 
                mollit anim id est laborum</p>
            </div>
        </div>
    
        <div class="nombre-pers">
            <p class="fuente-pers">Ochaco Uraraka</p>
        </div>
    
        <div class="tabla-pers">
            <div class="imagen">
            <img src="./img/personaje3.jpg" alt="Ochaco Uraraka" class="img-pers">
            </div>
            <div>
            <table>
                <tbody>
                    <tr>
                        <td class="tabla-head">Nombre De Héroe</td>
                        <td>Uravity</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Fecha De Nacimiento</td>
                        <td>27 de Diciembre</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Altura</td>
                        <td>156cm</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Quirk</td>
                        <td>Gravedad</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Tipo de Sangre</td>
                        <td>B</td>
                    </tr>
                </tbody>
            </table>
        </div>
            <div class="texto-pers">
                <p class="desc-pers">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
                dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt 
                mollit anim id est laborum</p>
            </div>
        </div>
    
    </div>
    </body>
    </html>