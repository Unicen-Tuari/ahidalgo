{include file="admin_header.tpl"}
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
              {foreach $tipoSangre item=tipo}
              <option>{$tipo['type_blood']}</option>
              {/foreach}
            </select>
          </div>
        <div class="boton-personaje">
        <input type="submit" class="btn btn-primary" value="Agregar">
        </div>
      </form>
    </div>

<div class="lista-personajes">
    <h4>Lista De Personajes</h4>
        <table class="table border-white">
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
                <td class="border-white">{$personaje['name']|capitalize}</td>
                <td class="border-white">{$personaje['description']|capitalize}</td>
                <td class="border-white">{$personaje['hero_name']|capitalize}</td>
                <td class="border-white">{$personaje['birthday']|capitalize}</td>
                <td class="border-white">{$personaje['height']|capitalize}</td>
                <td class="border-white">{$personaje['quirk']|capitalize}</td>
                <td class="border-white">{$tipo['type_blood']['id_blood']|capitalize}</td>
                <td class="border-white"><button type="button" class="btn btn-link"><a href="deleteCharacter/{$personaje['id_character']}">Eliminar</a></button></td>
              </tr>
              {/foreach}
            </tbody>
          </table>
</div>
{include file="footer.tpl"}