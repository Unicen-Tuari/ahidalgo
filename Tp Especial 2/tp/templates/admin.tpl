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
<table class="table">
  <thead>
    <tr>
      <th scope="col">Nombre</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Nombre De Heroe</th>
      <th scope="col">Fecha Nacimiento</th>
      <th scope="col">Altura</th>
      <th scope="col">Quirk</th>
      <th scope="col">Tipo De Sangre</th>
    </tr>
  </thead>
  <tbody>
  {foreach $personajes item=personaje}
    <tr>    
    <td>{$personaje['name']}</td>
    <td>{$personaje['description']}</td>
    <td>{$personaje['hero_name']}</td>
    <td>{$personaje['fk_bloodtype']}</td>
    <td><button type="button" class="btn btn-link"><a href="deleteCharacter/{$personaje['id_character']}">Eliminar</a></button></td>
    </tr>
{/foreach}
  </tbody>
</table>

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