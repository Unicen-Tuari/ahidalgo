<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="./tp">
    <link rel="stylesheet" href="../css/tipoSangre.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Administración</title>
</head>
<body>
    <h3>Boku No Heroz<small class="text-muted"> Administración</small></h3>

    <div class="margen">
        <button type="button" class="btn btn-link"><a href="admin">Personajes</a></button>
        <button type="button" class="btn btn-link"><a href="tipoSangre">Tipo De Sangre</a></button>
        <button type="button" class="btn btn-danger"><a href="logout">Logout</a></button>
    </div>


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
            <td>{$tipo['type_blood']}</td>
            <td><button type="button" class="btn btn-link"><a href="deleteBloodtype/{$tipo['id_blood']}">Eliminar</a></button></td>
        </tr>
    {/foreach}
    </table>
</div>
</body>
</html>