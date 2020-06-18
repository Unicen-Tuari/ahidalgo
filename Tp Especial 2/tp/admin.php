<?php
include_once "database.php";
function admin(){
?>
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

  <?php
  $personajes = getCharacters();
  foreach ($personajes as $personaje){
    ?>
<li class="list-group-item"><?php echo $personaje['name']; ?></li>

<?php
}
?>
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

    
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
      </body>
    </html>
<?php
}

function newCharacter(){
  createCharacter();
  header("location: /tp/admin");
}
?>