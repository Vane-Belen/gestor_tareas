<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <div class="container w-50 mt-5">
            <form action="TareasServlet" method="POST">
                <div class="mb-3">
                    <label for="titulo" class="form-label">Titulo</label> 
                    <input type="text" class="form-control" id="titulo" name="titulo">
                </div>
                <div class="mb-3">
                    <label for="descripcion" class="form-label">Descripción</label>
                    <input type="text" class="form-control" id="descripcion" name="descripcion">
                </div>
                <div class="mb-3">
                    <label for="persona_asignada" class="form-label">Persona asignada</label>
                    <input type="text" class="form-control" id="persona_asignada" name="responsable">
                </div>
                <div class="mb-3">
                    <label for="fecha_inicio" class="form-label">Fecha de inicio</label>
                    <input type="date" class="form-control" id="fecha_inicio" name="fecha_inicio">
                </div>
                <div class="mb-3">
                    <label for="fecha_termino" class="form-label">Fecha de termino</label>
                    <input type="date" class="form-control" id="fecha_termino" name="fecha_termino">
                </div>
                <div class="mb-3">
                    <label for="dificultad" class="form-label">Dificultad</label>
                    <select class="form-select form-select-sm" name="dificultad">
                        <option selected>Dificultad</option>
                        <option value="Baja">Baja</option>
                        <option value="Media">Media</option>
                        <option value="Alta">Alta</option>
                    </select>
                </div>
                
                
                <div class="d-grid gap-2 col-2 mx-auto">
                    <button type="submit" class="btn btn-primary">Ingresar</button>
                </div>

            </form>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>


</html>


