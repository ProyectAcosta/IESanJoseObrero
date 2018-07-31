package DAO;

import Bean.AlumnoBEAN;
import Bean.NotaAlumnoBEAN;
import Bean.CursoAlumnoBEAN;
import java.sql.*;
import Util.ConexionBD;
import java.util.ArrayList;

public class AlumnoDAO {

    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<CursoAlumnoBEAN> listacurso=null;
    ArrayList<NotaAlumnoBEAN> listanota1=null;
    ArrayList<NotaAlumnoBEAN> listanota2=null;
    ArrayList<NotaAlumnoBEAN> listanota3=null;
    CursoAlumnoBEAN   objcurso=null;
    NotaAlumnoBEAN objnota=null;
    public boolean autentificacionD(String usuario, String contraseña) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("call ValidarDocente(?,?)");
            pt.setString(2, usuario);
            pt.setString(1, contraseña);
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

    public boolean autentificacionA(String usuario, String contraseña) {

        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("call ValidarAlumno(?,?)");
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
    
    
    
    public void cambiarDato(AlumnoBEAN alu)
    {
    try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("UPDATE `alumnos` SET `Nombre_Alu`=? ,`Telefono_Alu`=? WHERE `Dni_Alumno` =?");
            pt.setString(1, alu.getNombre_Alu());
            pt.setInt(2,alu.getTelefono_Alu());
            pt.setInt(3,alu.getDni_Alumno());
            rs = pt.executeQuery();
            
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
            System.out.println("error"+e);
        }
        
    }
    public void cambiarcontra(int dni,String contra)
    {
   
    try  {  cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("UPDATE `alumnos` SET `Contra_Alum`= ? WHERE `Dni_Alumno`= ?");
            pt.setString(1,contra);
            pt.setInt(2,dni);
            pt.executeUpdate();
            pt.close();
            cn.close();
    
        } catch (SQLException e) {
        System.out.println(e.getMessage());
        }
       
    }
    public void cambiardatos(int dni,String nombre,String sexo,int tel)
    {
   
    try  {  cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("UPDATE `alumnos` SET `Nombre_Alu`=?,`Sexo`=?,`Telefono_Alu`=? WHERE`Dni_Alumno`= ?");
            pt.setString(1,nombre);
            pt.setString(2,sexo);
            pt.setInt(3,tel);
            pt.setInt(4,dni);
            pt.executeUpdate();
            pt.close();
            cn.close();
    
        } catch (SQLException e) {
        System.out.println(e.getMessage());
        }
       
    }
    
    
 
    
    public  ArrayList<CursoAlumnoBEAN> listacurso(int CodGrado)
    {  
        try 
        {
            
        cn=ConexionBD.getConexionBD();
   
        pt = cn.prepareStatement( "{call Aula_Maestro(?)}");
        pt.setInt(1,CodGrado);
        rs=pt.executeQuery();
        listacurso=new ArrayList<CursoAlumnoBEAN>();
        while(rs.next())
        {
            objcurso=new CursoAlumnoBEAN();
            objcurso.setCurso(rs.getString("Asignatura"));
            objcurso.setDocente(rs.getString("Apellido_Maestro"));
            listacurso.add(objcurso);
        }
        pt.close();
        rs.close();
        cn.close();
            
        } catch (Exception e) 
        {
        }
        return listacurso;
    }
    public  ArrayList<NotaAlumnoBEAN> listanota1(String dniAlu)
    {  
        try 
        {
            
        cn=ConexionBD.getConexionBD();
   
        pt = cn.prepareStatement( "{call Nota_Alumno(?)}");
        pt.setString(1,dniAlu);
        rs=pt.executeQuery();
        listanota1=new ArrayList<NotaAlumnoBEAN>();
        while(rs.next())
        { if(rs.getInt("N_Periodo")==1){
            objnota=new NotaAlumnoBEAN();
            objnota.setCurso(rs.getString("Asignatura"));
            objnota.setPeriodo(rs.getInt("N_Periodo"));
            objnota.setNota(rs.getInt("Nota"));
            listanota1.add(objnota);
        }}
        pt.close();
        rs.close();
        cn.close();
            
        } catch (Exception e) 
        {
        }
        return listanota1;
    }
    public  ArrayList<NotaAlumnoBEAN> listanota2(String dniAlu)
    {  
        try 
        {
            
        cn=ConexionBD.getConexionBD();
   
        pt = cn.prepareStatement( "{call Nota_Alumno(?)}");
        pt.setString(1,dniAlu);
        rs=pt.executeQuery();
        listanota2=new ArrayList<NotaAlumnoBEAN>();
        while(rs.next())
        {  if(rs.getInt("N_Periodo")==2){
            objnota=new NotaAlumnoBEAN();
            objnota.setCurso(rs.getString("Asignatura"));
            objnota.setPeriodo(rs.getInt("N_Periodo"));
            objnota.setNota(rs.getInt("Nota"));
            listanota2.add(objnota);}
        }
        pt.close();
        rs.close();
        cn.close();
            
        } catch (Exception e) 
        {
        }
        return listanota2;
    }
    public  ArrayList<NotaAlumnoBEAN> listanota3(String dniAlu)
    {  
        try 
        {
            
        cn=ConexionBD.getConexionBD();
   
        pt = cn.prepareStatement( "{call Nota_Alumno(?)}");
        pt.setString(1,dniAlu);
        rs=pt.executeQuery();
        listanota3=new ArrayList<NotaAlumnoBEAN>();
        while(rs.next())
        {
            if(rs.getInt("N_Periodo")==3){
            objnota=new NotaAlumnoBEAN();
            objnota.setCurso(rs.getString("Asignatura"));
            objnota.setPeriodo(rs.getInt("N_Periodo"));
            objnota.setNota(rs.getInt("Nota"));
            listanota3.add(objnota);}
        }
        pt.close();
        rs.close();
        cn.close();
            
        } catch (Exception e) 
        {
        }
        return listanota3;
    }
    
   }
    
       
   