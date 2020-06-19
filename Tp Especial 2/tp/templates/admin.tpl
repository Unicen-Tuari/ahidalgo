<!doctype html>
    <html lang="en">
      <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <title>Boku No Heroz - Admin</title>
      </head>
      <body>
      <p></p>
        <h1>Bienvenido al sitio de administracion de Boku No Heroz!</h1>
        <h3>Lista de Personajes</h3>
<div>
  <ul class="list-group">
  {foreach from=$personajes item=personaje}
<li class="list-group-item">{$personaje['name']}</li>
{/foreach}

  </ul>
  </div>

  <h3>Agregar Personaje</h3>

  <form action ="newCharacter" method="get">
  <div class="form-group">
    <label for="exampleFormControlInput1">Nombre Personaje</label>
    <input type="text" class="form-control" id="name" name="name">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect1">Tipo de Sangre</label>
    <select class="form-control" id="bloodtype" name="bloodtype">
      <option>0</option>
      <option>A</option>
      <option>B</option>
      <option>AB</option>
    </select>
    <p></p>
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Descripcion</label>
    <textarea class="form-control" id="description" name="description" rows="3"></textarea>
  </div>
  <input class="btn btn-primary" type="submit" value="Agregar">
</form>
   
</body>
</html>