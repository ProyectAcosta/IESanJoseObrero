/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Bean.LoginDocenteBean;
import DAO.AlumnoDAO;
import DAO.LoginAlumnoDao;
import DAO.LoginDocenteDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MIGUEL
 */
@WebServlet(name = "ControladorDocente", urlPatterns = {"/ControladorDocente"})
public class ControladorDocente extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String  opcad=request.getParameter("op");
        int  op=Integer.parseInt(opcad);
        String pagina="";
        switch(op)
        {   case 1:
           {   
//               String usuario = request.getParameter("txtusuario");
//                String contraseña = request.getParameter("txtcontra");
//                String app="",apm="",dire="",tel="",sex="",emai="";
//                AlumnoDAO co = new AlumnoDAO();
//                LoginDocenteDao obj=new LoginDocenteDao();
//
//                if (co.autentificacionD(usuario, contraseña)) {
//                    request.setAttribute("nombre",usuario);
//                    request.setAttribute("apeP",obj.datoApP(contraseña, app));
//                    request.setAttribute("apeM",obj.datoApM(contraseña, apm));
//                    request.setAttribute("contra",contraseña);
//                    request.setAttribute("direccion",obj.datoDire(contraseña, dire));
//                    request.setAttribute("sexo",obj.datosexo(contraseña, sex));
//                    request.setAttribute("email",obj.datoEmail(contraseña,emai));
//                    request.setAttribute("telefono",obj.datoTele(contraseña,tel));
//                    pagina = "/Vista/ModuloDocente/IntranetDocente.jsp";
//                    break;
//                } else {
                    pagina="/Vista/ModuloDocente/LoginDocente.jsp";  
                    break;
//                }

           }    
           
          case 6:
          { 
               
            String dni=request.getParameter("dni");
            String apepa=request.getParameter("apepa");
            String apema=request.getParameter("apema");
            String nombre=request.getParameter("nombre");
            String sexo=request.getParameter("sexo");
            String telef=request.getParameter("telefono");
            String direc=request.getParameter("direccion");
            String email=request.getParameter("email");
                                 LoginDocenteBean  objloginABean=new  LoginDocenteBean(); 
                                 objloginABean.setDniDoc(Integer.parseInt(dni));
                                 objloginABean.setApel_M(apema);
                                 objloginABean.setApel_P(apepa);
                                 objloginABean.setNomb_D(nombre);
                                 objloginABean.setDirecD(direc);
                                 objloginABean.setTelefD(Integer.parseInt(telef));
                                 objloginABean.setSEXO(sexo);
                                 objloginABean.setEmailD(email);
                                 LoginDocenteDao objdao=new LoginDocenteDao();
//                                 objdao.InsertarDocenteLogin(objloginABean);
         
             pagina="/Vista/ModuloEstudiante/LoginAlumno.jsp";  
             
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
