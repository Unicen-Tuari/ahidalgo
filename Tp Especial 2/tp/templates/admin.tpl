{include file="admin_header.tpl"}
      <body>
        <h1>Boku No Heroz - Administracion</h1>
        
  <h3>Agregar Personaje</h3>
  <div class="div-character-1">
  <form action ="newCharacter" method="get">
  <div class="form-group-1">
    <label for="exampleFormControlInput1">Nombre Personaje</label>
    <input type="text" class="form-control" id="name" name="name">
  </div>
  <div class="form-group-1">
    <label for="exampleFormControlSelect1">Tipo de Sangre</label>
    <select class="form-control" id="bloodtype" name="bloodtype">
      <option>0</option>
      <option>A</option>
      <option>B</option>
      <option>AB</option>
    </select>
    <p></p>
  </div>
  <div class="form-group-1">
    <label for="exampleFormControlTextarea1">Descripcion</label>
    <textarea class="form-control" id="description" name="description" rows="3"></textarea>
  </div>
</div>
<div class="div-character-2">

  <div class="form-group-2">
    <label for="exampleFormControlInput1">Nombre de Heroe</label>
    <input type="text" class="form-control" id="hero_name" name="hero_name">
  </div>
  <div class="form-group-2">
    <label for="exampleFormControlInput1">Fecha de nacimiento</label>
    <input type="text" class="form-control" id="birthday" name="birthday">
  </div>
  <div class="form-group-2">
    <label for="exampleFormControlInput1">Altura</label>
    <input type="text" class="form-control" id="height" name="height">
  </div>
  <div class="form-group-2">
    <label for="exampleFormControlInput1">Quirk</label>
    <input type="text" class="form-control" id="quirk" name="quirk">
  </div>
</div>
  <input class="btn btn-primary" type="submit" value="Agregar">
</form>

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
    <td>{$personaje['description']|truncate:10}</td>
    <td>{$personaje['hero_name']}</td>
    <td>{$personaje['birthday']}</td>
    <td>{$personaje['height']}</td>
    <td>{$personaje['quirk']}</td>
    <td>{$personaje['fk_bloodtype']}</td>
    {$var = $personaje['id_character']}
    <td><button type="button" class="btn btn-link"><a href="deleteCharacter/{$var}">Eliminar</a></button></td>
    </tr>
{/foreach}
    </tbody>
    </table>
{include file="footer.tpl"}