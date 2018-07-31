/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Bean.AlumnoBEAN;
import Bean.CursoAlumnoBEAN;
import Bean.NotaAlumnoBEAN;
import DAO.AlumnoDAO;
import DAO.LoginAlumnoDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

public class ControladorIntranetALumno extends HttpServlet {

 
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         HttpSession sessionAlu=(HttpSession)request.getSession();
         String  opcad=request.getParameter("op");
         String pagina="";
         int  op=Integer.parseInt(opcad);
         AlumnoBEAN alu=new AlumnoBEAN();
         AlumnoDAO aludao=new AlumnoDAO();
         LoginAlumnoDao dao=new LoginAlumnoDao();
         sessionAlu.setMaxInactiveInterval(120);
          ArrayList<CursoAlumnoBEAN> lista=null;
          ArrayList<NotaAlumnoBEAN> listanota1=null;
          ArrayList<NotaAlumnoBEAN> listanota2=null;
          ArrayList<NotaAlumnoBEAN> listanota3=null;
          
        switch(op)
        {     
          case 2: 
                {
                 lista =aludao.listacurso(alu.getCod_Grado());
                 sessionAlu.setAttribute("listacursodoc",lista);                  
                 pagina = "/Vista/ModuloEstudiante/CursosAlumno.jsp";
                 break;
                }
          case 3: 
                {
                String dni=sessionAlu.getAttribute("dnialumno").toString();
                listanota1=aludao.listanota1(dni);
                listanota2=aludao.listanota2(dni);
                listanota3=aludao.listanota3(dni);
                sessionAlu.setAttribute("listanota1",listanota1); 
                sessionAlu.setAttribute("listanota2",listanota2); 
                sessionAlu.setAttribute("listanota3",listanota3); 
                pagina = "/Vista/ModuloEstudiante/NotaAlumno.jsp";
                break;
                }
         case 4: {
             
              
                pagina ="/Vista/ModuloEstudiante/ConfiguracionAlumno.jsp";
                break;
                }
          case 5:{
                
                pagina = "/Vista/ModuloEstudiante/PerfilAlumno.jsp";
                break;
                }
          
          case 6:{
                
              pagina="/Vista/ModuloEstudiante/LoginAlumno.jsp";  
              break;
                }
          case 7:{
              sessionAlu.invalidate();
              pagina="/index.jsp";   
              break;
                }
          case 8:{
            
             pagina = "/Vista/ModuloEstudiante/ConfigurarDatos.jsp";  
             break;   }
          case 9:{
            
             pagina = "/Vista/ModuloEstudiante/CambiarContraseña.jsp";  
             break;
                }
          case 10:{
            
             pagina = "/img/logos/Nada.jsp";  
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
