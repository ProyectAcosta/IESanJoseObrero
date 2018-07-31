package DAO;

import Bean.AlumnoBEAN;
import Bean.DocenteBEAN;
import Bean.LoginDocenteBean;
import Util.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDocenteDao {

    Connection  cn=null;
    PreparedStatement pt=null;
    PreparedStatement pt1=null;
    ResultSet         rs1=null;
    ResultSet         rs=null;
    
    
     public void DatosDocenteLogin(DocenteBEAN doc)
    {   
        try 
        {  
            cn=ConexionBD.getConexionBD();
             pt1=cn.prepareStatement("SELECT *from  maestro ;");
             rs1=pt1.executeQuery();
             while(rs1.next())
             {
             if(doc.getDni_Docente()==rs1.getInt(7))
                {
                doc.setDni_Docente(rs1.getInt(7));
                doc.setNombre_Doc(rs1.getString(3));
                doc.setApellido_Doc(rs1.getString(2));
                doc.setSexo(rs1.getString(4));
                doc.setTelefono_Doc(rs1.getInt(6));
                doc.setContra_Doc(rs1.getString("Contra_Doc"));
                }
             }
             pt1.close();
             rs1.close();
             cn.close();
                       
             
        } catch (Exception e) {
           
        }
      
    }
}
