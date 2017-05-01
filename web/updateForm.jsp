<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="model.Student"%>

<%Student s = (Student) request.getAttribute("s");%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Information</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/stylish-portfolio.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    </head>
    <body>

        <div class ="text-right">
            <a href= "index.jsp" class ="btn btn-default">Home</a>
        </div>    

        <div class="text-center">    
            <h1> Student Information </h1>
        </div>    


        <div class="form-group-lg">
            <form name="updateForm" action="updateStudent" method="get">

                <label>ID:</label>
                <br>
                <input type="text" name="studentID" value="<%= s.getStudentID()%>" readonly="True"  />
                <br>
                <label>Name:</label>
                <br>
                <input type="text" name="name" value="<%= s.getName()%>" required />
                <br>
                <label>Address:</label>
                <br>
                <input type="text" name="address" value="<%= s.getAddress()%>" required/>
                <br>
                <label>City:</label>
                <br>
                <input type="text" name="city" value="<%= s.getCity()%>" required/>
                <br>
                <label>State:</label>
                <br>
                <input type="text" name="state" value="<%= s.getState()%>" required/>
                <br>
                <label>Zip</label>
                <br>
                <input type="text" name="zip" value="<%= s.getZipCode()%>" required/>
                <br>
                <label>Phone:</label>
                <br>
                <input type="text" name="phone" value="<%= s.getPhoneNum()%>" required/>
                <br>
                <label>Email:</label>
                <br>
                <input type="text" name="email" value="<%= s.getEmail()%>" required/>
                <br><br>

                <label>Student Type:</label>
                <br>

                <% if(s.getVoiceOrPiano().equals("V")) { %>
                <input type="radio" name="voiceOrPiano" id="V" value="V" checked>
                V
                <input type="radio"  name="voiceOrPiano" id="P" value="P">
                P
                <%} else if(s.getVoiceOrPiano().equals("P")) { %>
                <input type="radio" name="voiceOrPiano" id="V" value="V">
                V
                <input type="radio"  name="voiceOrPiano" id="P" value="P" checked>
                P
                <% } %>
                
                <br><br>
                <div class="form-group">
                    <label>Student Level</label>
                    <select class="form-control" name="level">
                  
                <% if(s.getLevel().equals("1")) { %>  
                        <option value = "1" selected>1</option>
                        <option value = "2">2</option>
                        <option value = "3">3</option>
                        <option value = "4">4</option>
                <%} else if(s.getLevel().equals("2")) { %>
                        <option value = "1">1</option>
                        <option value = "2" selected>2</option>
                        <option value = "3">3</option>
                        <option value = "4">4</option>
                <%} else if(s.getLevel().equals("3")) { %>
                        <option value = "1">1</option>
                        <option value = "2">2</option>
                        <option value = "3" selected>3</option>
                        <option value = "4">4</option>
                <%} else if(s.getLevel().equals("4")) { %>
                        <option value = "1">1</option>
                        <option value = "2">2</option>
                        <option value = "3">3</option>
                        <option value = "4" selected>4</option>
                <% } %>
                    </select>
                </div>
                <br>
                <label>Gender:</label>
                <br>   
                
                <% if(s.getGender().equals("M")) { %>
                <input type="radio" name="gender" id="M" value="M" checked>
                M
                <input type="radio" name="gender" id="F" value="F">
                F
                <%} else if(s.getGender().equals("F")) { %>
                <input type="radio" name="gender" id="M" value="M">
                M
                <input type="radio" name="gender" id="F" value="F" checked>
                F
                <% } %>
                
                <br><br>

                <a href= "delete?StudentID=<%= s.getStudentID()%>" class ="btn btn-default">Delete</a>
                <input type="submit" name="submit" value="Update" class = "btn btn-default"/>
            </form>
        </div> 
    </body>
</html>