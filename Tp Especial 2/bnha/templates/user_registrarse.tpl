{include file="user_header.tpl"}
<body>
<h3>Boku No Heroz - Administración<small class="text-muted"> Registrarse</small></h3>

<div class="form">
<form action="registro" method="post">
  <div class="form-group">
    <label for="exampleFormControlInput1">Ingresa un email válido</label>
    <input type="email" class="form-control" id="email" name="email" placeholder="email@ejemplo.com">
  </div>

  <div class="form-group">
          <label for="exampleInputPassword1">Ingresa una contraseña</label>
          <input type="password" class="form-control" id="password" name="password">
        </div>

  <button type="submit" class="btn btn-dark">Registrarse</button>
</form>
</div>
{include file="footer.tpl"}