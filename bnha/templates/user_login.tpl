{include file="user_header.tpl"}
      <body>
      <h3>Boku No Heroz - Administración<small class="text-muted"> Ingresar</small></h3>

    <div class="form">
      <img src="img/login.jpg" alt="Izuku Midoriya" class="imagen-login">
      <p class="h5">Por favor ingrese un email y una contraseña válidos</p>
      <form action="ingresar" method="post">
        <div class="form-group">
          <label for="exampleFormControlInput1">Email</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="email@ejemplo.com">
        </div>

        <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="password" name="password">
              </div>

        <p><input class="btn btn-dark" type="submit" value="Acceder"></p>
        <button type="button" class="btn btn-link"><a href="registrarse">No tienes usuario? Registrate ahora!</a></button>
      </form>
    </div>
{include file="footer.tpl"}