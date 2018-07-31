/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Robles
 */
public class ModuloMenu extends HttpServlet {

  
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String  opcad=request.getParameter("op");
        int  op=Integer.parseInt(opcad);
        String pagina="";
        switch(op)
        {   case 1:{ 
             pagina="/Vista/Menu/Resena/Re.jsp";   
                break;}
            case 2:{ 
            pagina="/Vista/Menu/Vision/Vision.jsp";               
                break;}
            case 3:{ 
            pagina="/Vista/Menu/Mision/Mision.jsp";     
                break;}
            case 4:{
            pagina="/Vista/Menu/Login/Login.jsp";    
                break;}
            case 5:{ 
            pagina="/Vista/ModuloDocente/LoginDocente.jsp";                
                break;}
            case 6:{ 
            pagina="/Vista/ModuloEstudiante/LoginAlumno.jsp";    
                break;}
            case 7:{ 
           pagina="/Vista/Menu/Contacto/Contacto.jsp";   
                break;}
            case 8:{ 
           pagina="/index.jsp";   
                break;}
            case 9:{ 
           pagina="/Vista/Menu/Principal/Principal.jsp";   
                break;}
               
          }
        
   getServletContext().getRequestDispatcher(pagina).forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
