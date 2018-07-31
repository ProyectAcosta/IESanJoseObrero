package Util;
import java.sql.*;
public class ConexionBD 
{
    public   static Connection getConexionBD()
    {   Connection   cn=null;
        try 
        {
          Class.forName("com.mysql.jdbc.Driver");
          cn=DriverManager.getConnection("jdbc:mysql://localhost/colegionacional","root","");
             System.out.println("Se Conecto !!");
        } catch (Exception e) 
        { 
            System.out.println("No Se Conecto !!");
        }
       return  cn; 
    }
    public static void main(String[] args)
    {
        getConexionBD();
    }    
}
