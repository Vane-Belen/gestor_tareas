package com.controller;

import com.controller.exceptions.NonexistentEntityException;
import com.entitys.Usuarios;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ControladorPersistenciaUsu {

    UsuariosJpaController usuJpa = new UsuariosJpaController();

    //Operación CREATE
    public void crearUsuario(Usuarios usu) {
        usuJpa.create(usu);
    }

    //Operación READ
    public List<Usuarios> traerUsuarios() {
        return usuJpa.findUsuariosEntities();
    }

    public void borrarUsuario(int id) {
        try {
            usuJpa.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladorPersistenciaUsu.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
