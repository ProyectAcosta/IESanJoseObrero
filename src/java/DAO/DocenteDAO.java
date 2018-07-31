
package DAO;

import Bean.AlumnoBEAN;
import Bean.DocenteBEAN;
import Bean.LoginDocenteBean;
import Util.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class DocenteDAO {
    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<DocenteBEAN> list = new ArrayList<>();
    DocenteBEAN obj = null;

    public boolean autentificacionD(String usuario, String contraseña) {
         try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("select *from maestro where Dni_Docente=?  and Contra_Doc=?");
            pt.setString(2, contraseña);
            pt.setInt(1, Integer.parseInt(usuario));
            rs = pt.executeQuery();
            if (rs.absolute(1)) {
                return true;
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
            System.out.println("error"+e);
        }
        return false;
    }
  
    public void cambiarDatoD(DocenteBEAN doc)
    {
    try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("UPDATE `maestro` SET `Nombre_Doc`=? ,`Telefono_Doc`=? WHERE `Dni_Docente` =?");
            pt.setString(1, doc.getNombre_Doc());
            pt.setInt(2,doc.getTelefono_Doc());
            pt.setInt(3,doc.getDni_Docente());
            rs = pt.executeQuery();
            
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
            System.out.println("error"+e);
        }
        
    }
    public ArrayList<DocenteBEAN> listarTodos() {
        LoginDocenteBean objC = new LoginDocenteBean();
        try {
            int i = 0;
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("call docente");
            rs = pt.executeQuery();
            while (rs.next()) {
                if (rs.getInt(1) != objC.getDniDoc()) {
                    i = 1;
                }
            }
            if (i == 1) {
                try {
                    pt = cn.prepareStatement("select *from alumnos");
                    rs = pt.executeQuery();
                    while (rs.next()) {
                        obj = new DocenteBEAN();
                        obj.setAlumno(rs.getString(2));
                        
                        list.add(obj);
                    }
                    pt.close();
                    pt.close();
                    rs.close();
                    rs.close();
                    cn.close();
                } catch (Exception e) {
                    System.out.println(e.getMessage());
                }
            }
        } catch (Exception e) {
        }
        return list;
    }
}
