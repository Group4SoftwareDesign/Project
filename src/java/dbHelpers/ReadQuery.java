package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.student;


public class ReadQuery {

    private Connection conn;
    private ResultSet results;
    
    
public ReadQuery(){

     Properties props = new Properties();  //MWC
     InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
     
     String driver = props.getProperty("driver.name");
     String url = props.getProperty("server.name");
     String username = props.getProperty("user.name");
     String passwd = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, passwd);
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
}
    

public void doRead(){
        
        try {
            String query = "Select * from student";
            
            PreparedStatement ps = conn.prepareStatement(query);
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
       
}


public String getHTMLtable(){
    
    String table = "";
    table += "<table border=1>";
    
    
        try {
            while(this.results.next()){
                
                student student = new student();
                student.setStudentID(this.results.getInt("StudentID"));
                student.setName(this.results.getString("Name"));
                student.setAddress(this.results.getString("Address"));
                student.setCity(this.results.getString("City"));
                student.setState(this.results.getString("State"));
                student.setZipCode(this.results.getInt("ZipCode"));
                student.setPhoneNum(this.results.getInt("PhoneNum"));
                student.setEmail(this.results.getString("Email"));
                student.setVoiceOrPiano(this.results.getString("VoiceOrPiano"));
                student.setGender(this.results.getString("Gender"));
                
                table += "<tr>";
                table += "<td>";
                table += student.getStudentID();
                table += "</td>";
                
                table += "<td>";
                table += student.getName();
                table += "</td>";
                
                table += "<td>";
                table += student.getAddress();
                table += "</td>";
                
                table += "<td>";
                table += student.getCity();
                table += "</td>";
                
                table += "<td>";
                table += student.getState();
                table += "</td>";
                
                table += "<td>";
                table += student.getZipCode();
                table += "</td>";
                
                table += "<td>";
                table += student.getPhoneNum();
                table += "</td>";
                
                table += "<td>";
                table += student.getEmail();
                table += "</td>";
                
                table += "<td>";
                table += student.getVoiceOrPiano();
                table += "</td>";
                
                table += "<td>";
                table += student.getGender();
                table += "</td>";
                
                
                table += "</tr>";
                
            }   } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
    
    table += "</table>";
    return table;
    


}
}