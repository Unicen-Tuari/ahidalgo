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

<div class="div-contacto">
            <h1>CONTACTANOS</h1>
            <p class="texto-gral">
                No sería muy Plus Ultra de nuestra parte si no aceptáramos las sugerencias
                del fandom verdad? Si deseas comentarnos algo, agregar algún dato o curiosidad, 
                dejar sugerencias sobre que deberíamos mejorar en nuestra página o cualquier
                 otra cosa, por favor completa el siguiente formulario
            </p>
    
            <div class="div-form">
                <form>
                    <p>Nombre <input type="text"></p>
                    <p>Apellido <input type="text"></p>
                    Sexo
                    <select>
                        <option value="Masculino">Masculino</option>
                        <option value="Femenino">Femenino</option>
                        <option value="Otro">Otro</option>
                        <option value="NoDecirlo">Prefiero no decirlo</option>
                    </select>
                    <p>Correo Electrónico <input type="text"></p>
                    <p>Motivo:
                    <input type="checkbox" name="motivo">Deseo comentar algo
                    <input type="checkbox" name="motivo">Deseo dejar una sugerencia
                    <p>En cualquier caso, puedes dejar tu aporte aquí abajo</p>
                    <p><textarea name="aporte" cols="50" rows="4">Gracias por la sugerencia!                </textarea> </p>
                    <p><button type="submit">Enviar</button></p>
                </form>
            </div>
        </div>
{include file="footer.tpl"}