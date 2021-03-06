/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author Austin
 */
public class SearchQuery {

    private Connection conn;
    private ResultSet results;

    public SearchQuery() {
        Properties props = new Properties();
        InputStream instr = getClass().getResourceAsStream("dbConn.properties");
        try {
            props.load(instr);
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            instr.close();
        } catch (IOException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

        String driver = props.getProperty("driver.name");
        String url = props.getProperty("server.name");
        String username = props.getProperty("user.name");
        String password = props.getProperty("user.password");
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void doSearch(String s) {

        try {
            String query = "SELECT * FROM Student WHERE UPPER(Name) LIKE ? OR PhoneNum LIKE ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, '%' + s.toUpperCase() + '%');
            ps.setString(2, '%' + s.replaceAll("(),.-","") + '%');
            this.results = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String getHTMLtable() {
        String table = "";
        
        
        try {
            
            table += "<table class= table table-striped>";
            
            
            table += "<tr>";
            table += "<th>ID</th><th>Name</th><th>VoiceOrPiano</th><th>Level</th><th>Action</th>";
            table += "</tr>";
            
            
            if (!this.results.isBeforeFirst()) {
                table += "<tr>";
                table += "<td colspan='7'> Sorry, this Make does not exist in the database</td>";
                table += "</tr>";
                table += "</table>";
            } else {

                while (this.results.next()) {

                    Student s = new Student();
                    s.setStudentID(this.results.getInt("StudentID"));
                    s.setName(this.results.getString("Name"));
                    s.setVoiceOrPiano(this.results.getString("VoiceOrPiano"));
                    s.setLevel(this.results.getString("Levels"));

                    table += "<tr>";
                    table += "<td>";
                    table += s.getStudentID();
                    table += "</td>";

                    table += "<td>";
                    table += s.getName();
                    table += "</td>";

                    table += "<td>";
                    table += s.getVoiceOrPiano();
                    table += "</td>";

                    table += "<td>";
                    table += s.getLevel();
                    table += "</td>";

                    table += "<td>";
                      
                    table += "<a href=update?studentID=" +s.getStudentID() + ">More Info </a>";
                    table += "</td>";
                    
                    table += "</tr>";

                }
                table += "</table>";
            }
        } catch (SQLException ex) {
            Logger.getLogger(SearchQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        return table;
    }

}
