<%@page import="com.entitys.Tareas"%>
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
                <label class="visually-hidden">ID Tarea</label>
                <input type="text" class="form-control" id="id_usuario" name="id_usuario">
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-danger mb-3">Eliminar Registro</button>
            </div>
        </form>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID Tarea</th>
                        <th scope="col">Titulo</th>
                        <th scope="col">descripcion</th>
                        <th scope="col">Responsable</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Tareas> listaTareas = (List) request.getSession().getAttribute("listaTareas");
                        int cont = 1;
                        for (Tareas tarea : listaTareas) {
                    %>
                    <tr>
                        
                            <th scope="row" ><%=cont%></th>
                            <td><%=tarea.getTitulo()%></td>
                            <td><%=tarea.getDescripcion()%></td>
                            <td><%=tarea.getResponsable()%></td>                   
                    </tr>
                    <% cont = cont + 1;%>
                    <% }%>
                </tbody>
            </table>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</html>
