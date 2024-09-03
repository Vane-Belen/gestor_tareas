package com.entitys;

import com.controller.ControladorPersistenciaUsu;
import java.util.List;

public class ControladorUsuario {

    ControladorPersistenciaUsu ctrlPersisUsu = new ControladorPersistenciaUsu();

    public void crearUsuario(Usuarios usu) {
        ctrlPersisUsu.crearUsuario(usu);
    }
    
    public List<Usuarios> traerUsuarios() {
        return ctrlPersisUsu.traerUsuarios();
    }

    public void borrarUsuario(int id) {
        ctrlPersisUsu.borrarUsuario(id);
    }
}
