/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Bean.DocenteBEAN;
import DAO.LoginDocenteDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MIGUEL
 */
public class ControladorIntranetDocente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          HttpSession sessionDoc=(HttpSession)request.getSession();
         String  opcad=request.getParameter("op");
         String pagina="";
         int  op=Integer.parseInt(opcad);
         DocenteBEAN alu=new DocenteBEAN();
         LoginDocenteDao dao=new LoginDocenteDao();
          sessionDoc.setMaxInactiveInterval(120);
          
          
        switch(op)
        {     
          case 2: 
                {          
                pagina = "/Vista/ModuloDocente/CursosDocente.jsp";
                break;
                }
          case 3: 
                {
                pagina = "/Vista/ModuloDocente/NotaDocente.jsp";
                break;
                }
         case 4: {
             
              
                pagina ="/Vista/ModuloDocente/ConfiguracionDocente.jsp";
                break;
                }
          case 5:{
                
                pagina = "/Vista/ModuloDocente/PerfilDocente.jsp";
                break;
                }
          
          case 6:{
                
              pagina="/Vista/ModuloDocente/LoginDocente.jsp";  
              break;
                }
          case 7:{
              sessionDoc.invalidate();
              pagina="/index.jsp";   
              break;
                }
          case 8:{
            
             pagina = "/Vista/ModuloDocente/ConfigurarDatos.jsp";  
             break;   }
          case 9:{
            
             pagina = "/Vista/ModuloEstudiante/CambiarContraseña.jsp";  
             break;
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
