<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <!--Import Google Icon Font-->
      <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
          
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Leer Noticias</h2>
<form action = "Consultar" method = "get">
<input type="submit" value="Mostrar" />
</form>

<table>
        <thead>
          <tr>
              <th>Email</th>
              <th>Título</th>
              <th>Texto</th>
          </tr>
        </thead>

        <tbody>
          <tr>
        <%
String msg = (String)session.getAttribute("todo");
out.println(msg);
%>
          </tr>
   
        </tbody>
      </table>


<a href="altanoticia.jsp"><input type="button" value="Escribir noticia" /></a>



  <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>