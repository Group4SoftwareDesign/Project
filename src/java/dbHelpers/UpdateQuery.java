
package dbHelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;


public class UpdateQuery {
    
    private Connection conn;
    
    public UpdateQuery() {
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String password = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url,username, password);
        } catch (SQLException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }
    
    
    public void doUpdate (Student s){
        
        try {
            String query = "UPDATE student SET Name = ?, Address = ?, City = ?, State = ?, ZipCode = ?, PhoneNum = ?, Email = ?, VoiceOrPiano = ?, Levels = ?, Gender = ? WHERE StudentID = ?";
            
            PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setString(1,s.getName());
            ps.setString(2,s.getAddress());
            ps.setString(3,s.getCity());
            ps.setString(4,s.getState());
            ps.setInt(5,s.getZipCode() );
            ps.setString(6,s.getPhoneNum() );
            ps.setString(7,s.getEmail() );
            ps.setString(8,s.getVoiceOrPiano());
            ps.setString(9,s.getLevel());
            ps.setString(10,s.getGender());
            ps.setInt(11,s.getStudentID());
            
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UpdateQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
