package com.servlet;

import com.entitys.ControladorUsuario;
import com.entitys.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.console;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Genesys
 */
@WebServlet(name = "UsuariosServlet", urlPatterns = {"/UsuariosServlet"})
public class UsuariosServlet extends HttpServlet {
    
    ControladorUsuario controlUsu = new ControladorUsuario();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response);
        
        List<Usuarios> listaUsuarios = new ArrayList<>();
        listaUsuarios = controlUsu.traerUsuarios();
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaUsuarios", listaUsuarios);
        response.sendRedirect("listaUsuario.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String cargo = request.getParameter("cargo");
        String area = request.getParameter("area");
        
        Usuarios usu = new Usuarios();
        usu.setNombre(nombre);
        usu.setApellido(apellidos);
        usu.setCargo(cargo);
        usu.setArea(area);
        
        controlUsu.crearUsuario(usu);
        response.sendRedirect("listaUsuario.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
