<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
    </head>
    <body>
        <h1>Lista de Usuarios registrados</h1>
          <%
              List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
              int cont = 1;
                for(Usuario usu : listaUsuarios) {         
          %> 
          
                    <p><b>Usuario Nº <%=cont%></b></p>
                    <p>Id: <%=usu.getId()%> </p>
                    <p>Dni: <%=usu.getDni()%> </p>
                    <p>Nombre: <%=usu.getNombre()%></p>
                    <p>Apellido: <%=usu.getApellido()%></p>
                    <p>Telefono: <%=usu.getTelefono()%></p>
                    <p>------------------------------------</p>
                    <% cont = cont + 1;%>
          
          <% } %>
        
        
    </body>
</html>
