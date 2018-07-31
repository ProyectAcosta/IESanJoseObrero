
package Controlador;


import Bean.DocenteBEAN;
import DAO.DocenteDAO;
import DAO.LoginDocenteDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ControladorLoginDocente extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       HttpSession sessionAlu=request.getSession(true);
         DocenteDAO co=new DocenteDAO();
         DocenteBEAN alu=new DocenteBEAN();
         LoginDocenteDao dao=new LoginDocenteDao();

         String  opcad=request.getParameter("op");
         
         int  op=Integer.parseInt(opcad);
         String pagina="";
         String usuario = request.getParameter("txtusuario");
         String contraseña = request.getParameter("txtcontra");
            switch(op)
         {   case 1:
           {           
                if (co.autentificacionD(usuario, contraseña)) {
                    alu.setDni_Docente(Integer.parseInt(usuario));
                    alu.setContra_Doc(contraseña);
                    dao.DatosDocenteLogin(alu);
                    sessionAlu.setAttribute("datoDocente", alu);
                    pagina="/Vista/ModuloDocente/IntranetDocente.jsp";
                    sessionAlu.setAttribute("DatoLoginD",contraseña);
                    break;
               } 
                else{
                request.setAttribute("msm","nonull");
                pagina="/Vista/ModuloDocente/LoginDocente.jsp";  
                break;
                }
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
