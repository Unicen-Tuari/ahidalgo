{include file="header.tpl"}

<a href="logout">Logout</a>
<h1>Lista de Albums</h1>
<form action="crear" method="post">
  <div class="form-group">
    <label for="tarea">Tarea</label>
    <input type="text" class="form-control"  name="album" id="album" placeholder="Inserte album">
  </div>
  <input type="submit" class="btn btn-primary" value="Crear">
</form>

ul class="list-group">
{foreach from=$albums item=album}
  <li class="list-group-item">
        <a href='ver/{$album['id']}'>{$album['titulo']|upper|truncate:10}</a>
    </li>
{/foreach}
 </ul>

 {include file="footer.tpl"}