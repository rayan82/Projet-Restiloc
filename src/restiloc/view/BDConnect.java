/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package restiloc.view;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author r.akhmouch
 */
public class BDConnect {
    
        
/*        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stage","root","");
            System.out.println("success");
        } catch (ClassNotFoundException ex){
            
        } catch (SQLException ex){
            ex.printStackTrace();
        }*/

    public static void main(String[] args) {
        Connection con;
        PreparedStatement pst;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restiloc", "root", "");
            System.out.println("success");
        } catch (ClassNotFoundException ex) {

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }
    
    public static Connection getCo() {
        Connection con;
        try {
            
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restiloc?useSSL=false", "root", "");
            System.out.println("success");
            return con;
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
}
