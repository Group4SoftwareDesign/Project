
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
import model.Student;


public class ReadQuery {
    
    private Connection conn;
    private ResultSet results;
    
    public ReadQuery(){
        Properties props = new Properties();
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
        String password = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url,username, password);
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
     public void doRead(){
        
       
        try {
            String query = "SELECT * FROM Student";
            
            PreparedStatement ps = conn.prepareStatement(query);
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        } 
        
     public String getHTMLtable() {

        String table = "";
        table += "<table border = 1>";


            table += "<tr>";
            table += "<th>ID</th><th>Name</th><th>Address</th><th>City</th><th>State</th><th>Zip</th><th>PhoneNum</th><th>Email</th><th>VoiceOrPiano</th><th>Level</th><th>Gender</th>";
            table += "</tr>";

            
            try {
                //this is where it breaks
                while (this.results.next()) {
                    
                    Student s = new Student();
                    s.setStudentID(this.results.getInt("StudentID"));
                    s.setName(this.results.getString("Name"));
                    s.setAddress(this.results.getString("Address"));
                    s.setCity(this.results.getString("City"));
                    s.setState(this.results.getString("State"));
                    s.setZipCode(this.results.getInt("ZipCode"));
                    s.setPhoneNum(this.results.getString("PhoneNum"));
                    s.setEmail(this.results.getString("Email"));
                    s.setVoiceOrPiano(this.results.getString("VoiceOrPiano"));
                    s.setLevel(this.results.getString("Levels"));
                    s.setGender(this.results.getString("Gender"));
                    
                    table += "<tr>";
                    table += "<td>";
                    table += s.getStudentID();
                    table += "</td>";
                    
                    table += "<td>";
                    table += s.getName();
                    table += "</td>";
                    
                    table += "<td>";
                    table += s.getAddress();
                    table += "</td>";
                    
                    table += "<td>";
                    table += s.getCity();
                    table += "</td>";
                    
                    table += "<td>";
                    table += s.getState();
                    table += "</td>";
                    
                    table += "<td>";
                    table += s.getZipCode();
                    table += "</td>";
                    
                    table += "<td>";
                    table += s.getPhoneNum();
                    table += "</td>";
                    
                    table += "<td>";
                    table += s.getEmail();
                    table += "</td>";
                    
                    table += "<td>";
                    table += s.getVoiceOrPiano();
                    table += "</td>";
                    
                    
                    table += "<td>";
                    table += s.getLevel();
                    table += "</td>";
                    
                    table += "<td>";
                    table += s.getGender();
                    table += "</td>";
                    
                    table += "</tr>";
                    
                    
                }   } catch (SQLException ex) {
                Logger.getLogger(ReadQuery.class.getName()).log(Level.SEVERE, null, ex);
            }
        table += "</table>";
        return table;

    }
}