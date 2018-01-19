<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

 <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">

 
</head>
<body>
<h1>Alta-Noticias</h1>

<br>

<div class="row" >
    <form class="col s12" action="AltaNoticia" method="post">
      <div class="row">
        <div class="input-field col s6">
          <input  type="email" class="validate" name="email" placeholder="Email">
          <label for="first_name" onclick=""></label>
        </div>   
    
 </div>
      <div class="row">
       <select name="idcategoria">
      <option value="" selected >IDCategoria</option>
      <option value="Deporte">Deporte</option>
      <option value="Sociedad">Sociedad</option>
      <option value="Economia">Economia</option>
    </select>
        </div>

      <div class="row">
        <div class="input-field col s12">
          <input type="text" class="validate" name="titulo" placeholder="Titulo">
          <label for="password"></label>
        </div>
      <div class="row">
        <div class="input-field col s12">
          <input type="text" class="validate" name="texto" placeholder="Texto">
          <label for="password"></label>
        </div>
      </div>
        
      </div>
          	<input type="submit" value="Alta Noticia" class="btn btn-primary">
    </form>
  </div>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
  <script type="text/javascript">

  $(document).ready(function() {
    $('select').material_select();
  });
          </script>
</body>

</html>