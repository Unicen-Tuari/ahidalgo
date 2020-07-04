{include file="header.tpl"}
    <body>
        <div>
{include file="navbar.tpl"}

    <div class="div-fondo-pers">
        <h1>PERSONAJES</h1>
        <p class="texto-gral">
            Los personajes son parte vital de la esencia de cualquier anime. Aquí encontrarás
            historias, fotos y estadísticas de los mismos. Si consideras una buena idea que agreguemos
             ciertos detalles en esta sección, háznoslo saber en la sección de contacto.
        </p>

   {foreach $personajes item=personaje} 
        <div class="nombre-pers">
<p class="fuente-pers">{$personaje['name']|capitalize}</p>
        </div>

        <div class="tabla-pers">
            <div class="imagen">
            <img src="./img/no_disponible.jpg" class="img-pers">
            </div>
            <div>
            <table>
                <tbody>
                    <tr>
                        <td class="tabla-head">Nombre De Héroe</td>
                        <td>{$personaje['hero_name']|capitalize}</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Fecha De Nacimiento</td>
                        <td>{$personaje['birthday']|capitalize}</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Altura</td>
                        <td>{$personaje['height']|capitalize}</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Quirk</td>
                        <td>{$personaje['quirk']|capitalize}</td>
                    </tr>
                    <tr>
                        <td class="tabla-head">Tipo de Sangre</td>
                        <td>{$tipoSangre[$personaje['char_blood']-1]['type_blood']|capitalize}</td>
                    </tr>
                </tbody>
            </table>
        </div>
            <div class="texto-pers">
                <p class="desc-pers">{$personaje['description']|capitalize}</p>
            </div>
        </div>
        {/foreach}    
    
    </div>
{include file="footer.tpl"}