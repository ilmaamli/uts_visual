/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data_mahasiswa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author User
 */
public class bio_mahasiswa {
    String driver   = "com.mysql.cj.jdbc.Driver";
    String db       = "jdbc:mysql://localhost/mahasiswa";
    String user     = "root";
    String password = "";
    
    Connection con;
    PreparedStatement ps; 
    
    boolean respons;
    
    public bio_mahasiswa() {
        try {
            Class.forName(driver);
            System.out.println("Driver Load..");
        } catch (ClassNotFoundException ex) {
            System.out.println("Driver tidak ditemukan");
            Logger.getLogger(bio_mahasiswa.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            con = DriverManager.getConnection(db, user, password);
            System.out.println("Berhasil Terkoneksi ");
        } catch (SQLException ex) {
            System.out.println("Gagal Terkoneksi");
            Logger.getLogger(bio_mahasiswa.class.getName()).log(Level.SEVERE, null, ex);
        }   
    }
    public boolean insertMhs(String nim, String nama, String prodi, String fakultas) throws SQLException{
        String query = "insert into data_mhs (nim, nama, prodi, fakultas) values (?,?,?,?)";
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, nim);
            ps.setString(2, nama);
            ps.setString(3, prodi);
            ps.setString(4, fakultas);
            ps.executeUpdate();
            respons = true;
            System.out.println("Berhasil Menambahkan");
        } catch (SQLException ex) {
           respons = false;
           System.out.println("Gagal Menambahkan");
           Logger.getLogger(bio_mahasiswa.class.getName()).log(Level.SEVERE, null, ex); 
        }
        return respons;
    }
}