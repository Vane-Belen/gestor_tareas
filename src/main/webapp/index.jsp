<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tu día</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>

        <nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
            <!--propiedades(estilos)  -->
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">Tu día</a>
                <button class="navbar-toggler" type="button"
                        data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 nav-pills">
                        <li class="nav-item"><a class="nav-link" href="TareasServlet" target="miContenedor">Tablero</a></li>
                        <li class="nav-item"><a class="nav-link" href="tareas.jsp" target="miContenedor">Ingresar Tareas</a></li>
                        <li class="nav-item"><a class="nav-link" href="UsuariosServlet" target="miContenedor">Usuarios Registrados</a></li>
                        <li class="nav-item"><a class="nav-link" href="usuarios.jsp" target="miContenedor">Ingresar Usuarios</a></li>
                        <li class="nav-item"><a class="nav-link" href="informes.jsp" target="miContenedor">Informes</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="m-3" style="height:900px;">
            <iframe name="miContenedor" style="height:100%; width:100%" frameBorder="0"></iframe>
        </div>



        <div class="container text-center mt-5" style="width:700px; height: 400px">


        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>

</html>
