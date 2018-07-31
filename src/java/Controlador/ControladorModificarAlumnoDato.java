/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Bean.AlumnoBEAN;
import DAO.AlumnoDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ControladorModificarAlumnoDato extends HttpServlet {

      protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
      {
       
         HttpSession sessionAlu=(HttpSession)request.getSession();
         String  opcad=request.getParameter("switch");
         String pagina="";
        int  op=Integer.parseInt(opcad);
        AlumnoDAO dao=new AlumnoDAO();
        AlumnoBEAN bean=new AlumnoBEAN();
         
        switch(op)
        {     
          case 1: 
                { 
               int dni=Integer.parseInt(sessionAlu.getAttribute("dnialumno").toString());
               String clavenueva=request.getParameter("contranueva1");
               dao.cambiarcontra(dni,clavenueva);
               bean=(AlumnoBEAN)sessionAlu.getAttribute("datoAlunmo");
               bean.setContra_Alum(clavenueva);
               sessionAlu.setAttribute("datoAlunmo", bean);
              pagina = "/Vista/ModuloEstudiante/IntranetAlumno.jsp";
               break;
                }
          case 2: 
                {          
               int dni=Integer.parseInt(sessionAlu.getAttribute("dnialumno").toString());
               int tele=Integer.parseInt(request.getParameter("telalu"));
               String nombre=request.getParameter("nomalu");
               String sexo=request.getParameter("sexoalu");
               dao.cambiardatos(dni,nombre,sexo,tele);
               bean=(AlumnoBEAN)sessionAlu.getAttribute("datoAlunmo");
               bean.setNombre_Alu(nombre);
               bean.setSexo(sexo);
               bean.setTelefono_Alu(tele);
               sessionAlu.setAttribute("datoAlunmo", bean);
               pagina = "/Vista/ModuloEstudiante/IntranetAlumno.jsp"; 
                }
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
