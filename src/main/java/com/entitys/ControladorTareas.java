package com.entitys;

import com.controller.ControladorPersistenciaTareas;
import java.util.List;

public class ControladorTareas {
    
    ControladorPersistenciaTareas ctrlPersisTarea = new ControladorPersistenciaTareas();
    
    public void crearTarea(Tareas tarea) {
        ctrlPersisTarea.crearTarea(tarea);
    }
    
    public List<Tareas> traerTareas() {
        return ctrlPersisTarea.traerTareas();
    }
    
    public void borrarTarea(int id) {
        ctrlPersisTarea.borrarTarea(id);
    }
}
