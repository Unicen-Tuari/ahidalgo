<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="http://localhost/tp/">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="css/personajes.css">
    <title>Administración</title>
</head>
<body>
    <h3>Boku No Heroz<small class="text-muted"> Administración</small></h3>

    <div class="margen">
        <button type="button" class="btn btn-link"><a href="admin">Personajes</a></button>
        <button type="button" class="btn btn-link"><a href="tipoSangre">Tipo De Sangre</a></button>
        <button type="button" class="btn btn-danger"><a href="logout">Logout</a></button>
    </div>

<div class="agregar-personaje">
    <h4>Agregar Personaje</h4>
    <form action="newCharacter" method="get">
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="name">Nombre Personaje</label>
            <input type="text" class="form-control" id="name" name="name">
          </div>
          <div class="form-group col-md-6">
            <label for="description">Descripcion</label>
            <input type="text" class="form-control" id="description" name="description">
          </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
              <label for="hero_name">Nombre De Heroe</label>
              <input type="text" class="form-control" id="hero_name" name="hero_name">
            </div>
            <div class="form-group col-md-6">
              <label for="birthday">Fecha De Nacimiento</label>
              <input type="text" class="form-control" id="birthday" name="birthday">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
              <label for="height">Altura</label>
              <input type="text" class="form-control" id="height" name="height">
            </div>
            <div class="form-group col-md-6">
              <label for="quirk">Quirk</label>
              <input type="text" class="form-control" id="quirk" name="quirk">
            </div>
          </div>
          <div class="form-group col-md-4">
            <label for="char_blood">Tipo De Sangre</label>
            <select id="char_blood" name="char_blood" class="form-control">
              <option>Traido de la base</option>
            </select>
          </div>
        <div class="boton-personaje">
        <input type="submit" class="btn btn-primary" value="Agregar">
        </div>
      </form>

    </div>


<div class="lista-personajes">
    <h4>Lista De Personajes</h4>
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
                <td>{$personaje['birthday']}</td>
                <td>{$personaje['height']}</td>
                <td>{$personaje['quirk']}</td>
                <td>{$personaje['char_blood']}</td>
                <td><button type="button" class="btn btn-link"><a href="deleteCharacter/{$personaje['id_character']}">Eliminar</a></button></td>
              </tr>
              {/foreach}
            </tbody>
          </table>

</div>
</body>
</html>