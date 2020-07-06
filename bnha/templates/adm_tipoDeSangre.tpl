{include file="admin_header.tpl"}
    <div class="agregar-sangre">
        <h4>Agregar Nuevo Tipo De Sangre</h4>
        <form action="newBloodtype" method="get">
        <div class="form-group">
        <input type="text" class="input-1" placeholder="Tipo De Sangre" id="type_blood" name="type_blood">
        </div>
        <div class="boton">
        <button type="submit" class="btn btn-primary">Agregar</button>
        </div>
      </form>
    </div>

    <div class="tipo-sangre">
    <h4>Tipos de sangre</h4>
    <table>
    {foreach $tipoSangre item=tipo}
        <tr>
            <td>{$tipo['type_blood']|capitalize}</td>
            <td><button type="button" class="btn btn-link"><a href="deleteBloodtype/{$tipo['id_blood']}">Eliminar</a></button></td>
        </tr>
    {/foreach}
    </table>
</div>
{include file="footer.tpl"}