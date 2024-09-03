package com.controller;

import com.controller.exceptions.NonexistentEntityException;
import com.entitys.Tareas;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ControladorPersistenciaTareas {
    
    TareasJpaController tareasJpa = new TareasJpaController();
    
    //Operación CREATE
    public void crearTarea(Tareas tarea) {
        tareasJpa.create(tarea);
    }
    
    public List<Tareas> traerTareas() {
        return tareasJpa.findTareasEntities();
    }

    public void borrarTarea(int id) {
        try {
            tareasJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladorPersistenciaUsu.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
