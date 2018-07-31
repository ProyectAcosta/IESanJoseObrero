
package DAO;


import Bean.AlumnoBEAN;
import Util.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

public class LoginAlumnoDao {
     Connection  cn=null;
    PreparedStatement pt=null;
    PreparedStatement pt1=null;
    ResultSet         rs1=null;
    ResultSet         rs=null;
    
    
     public void DatosAlumnoLogin(AlumnoBEAN alu)
    {   
        try 
        {  
            cn=ConexionBD.getConexionBD();
             pt1=cn.prepareStatement("call DatosAlumno");
             rs1=pt1.executeQuery();
             while(rs1.next())
             {
             if(alu.getDni_Alumno()==rs1.getInt("Dni_Alumno"))
                {
                alu.setCod_Grado(rs1.getInt("Cod_Grado"));
                alu.setDni_Alumno(rs1.getInt("Dni_Alumno"));
                alu.setNombre_Alu(rs1.getString("Nombre_Alu"));
                alu.setSexo(rs1.getString("Sexo"));
                alu.setTelefono_Alu(rs1.getInt("Telefono_Alu"));
                alu.setContra_Alum(rs1.getString("Contra_Alum"));
                alu.setGrado(rs1.getInt("Grado"));
                alu.setSeccion(rs1.getString("Seccion"));
                }
             }
             pt1.close();
             rs1.close();
             cn.close();
            
             
             
        } catch (Exception e) {
           
        }
      
    }
     
}
