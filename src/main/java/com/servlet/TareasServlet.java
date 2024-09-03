/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import com.entitys.ControladorTareas;
import com.entitys.Tareas;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "TareasServlet", urlPatterns = {"/TareasServlet"})
public class TareasServlet extends HttpServlet {
    
    ControladorTareas controlTarea = new ControladorTareas();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response);
        
        List<Tareas> listaTareas = new ArrayList<>();
        listaTareas = controlTarea.traerTareas();
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaTareas", listaTareas);
        response.sendRedirect("tablero.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        try {
            processRequest(request, response);
            
            String titulo = request.getParameter("titulo");
            String descripcion = request.getParameter("descripcion");
            String responsable = request.getParameter("descripcion");
            String fechaInicio = request.getParameter("fecha_inicio");
            String fechaTermino = request.getParameter("fecha_termino");
            String dificultad = request.getParameter("dificultad");
            
            SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
            Tareas tarea = new Tareas();
            tarea.setTitulo(titulo);
            tarea.setDescripcion(descripcion);
            tarea.setResponsable(responsable);
            tarea.setFechaInicio(formato.parse(fechaInicio));
            tarea.setFechaTermino(formato.parse(fechaTermino));
            tarea.setDificultad(dificultad);
            
            controlTarea.crearTarea(tarea);
        } catch (ParseException ex) {
            Logger.getLogger(TareasServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
