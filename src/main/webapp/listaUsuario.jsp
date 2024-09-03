<%@page import="com.entitys.Usuarios"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tu día</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <form class="row g-3" action="EliminarUsuarioServlet" method="POST">
            <div class="col-auto">
                <label class="visually-hidden">ID de Usuario</label>
                <input type="text" class="form-control" id="id_usuario" name="id_usuario">
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-danger mb-3">Eliminar Registro</button>
            </div>
        </form>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Cargo</th>
                        <th scope="col">Area</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Usuarios> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                        int cont = 1;
                        for (Usuarios usu : listaUsuarios) {
                    %>
                    <tr>
                        
                            <th scope="row" ><%=cont%></th>
                            <td><%=usu.getNombre()%></td>
                            <td><%=usu.getApellido()%></td>
                            <td><%=usu.getCargo()%></td>
                            <td><%=usu.getArea()%></td>                    
                    </tr>
                    <% cont = cont + 1;%>
                    <% }%>
                </tbody>
            </table>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</html>



