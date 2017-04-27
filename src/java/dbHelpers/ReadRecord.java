
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


public class ReadRecord {
    
    private Connection conn;
    private ResultSet results;
    
    private Student s = new Student();
    private int studentID;
    
    public ReadRecord (int studentID) {
    
     Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String password = props.getProperty("user.password");
        
        this.studentID = studentID;
        
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url,username, password);
        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public void doRead() {
    
        try {
            String query = "SELECT * FROM Student WHERE StudentID = ?";
            
            PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setInt(1, studentID);
            
            this.results = ps.executeQuery();
            
            this.results.next();
            
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
            
        } catch (SQLException ex) {
            Logger.getLogger(ReadRecord.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    
    
    
    
}
    
    public  Student getS(){
        
        return this.s;
    }
    
}
