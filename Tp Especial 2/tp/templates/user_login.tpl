{include file="user_header.tpl"}
        <title>Login</title>
      </head>

      <body>
      <h3>Boku No Heroz - Administración<small class="text-muted"> Ingresar</small></h3>

      <form action="ingresar" method="post">
        <div class="form-group">
          <label for="exampleFormControlInput1">Email</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="email@ejemplo.com">
        </div>

        <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="password" name="password">
              </div>

        <input class="btn btn-dark" type="submit" value="Acceder">
        <button type="button" class="btn btn-link"><a href="registrarse">No tienes usuario? Registrate ahora!</a></button>
      </form>

{include file="footer.tpl"}