<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="model.Student"%>

<%Student s = (Student) request.getAttribute("s"); %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update A Student</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <div class="main">
            <form name="updateForm" action="updateStudent" method="get">
                
                <label>ID:</label>
                <br>
                <input type="text" name="studentID" value=" <%= s.getStudentID() %> " />
                <br>
                <label>Name:</label>
                <br>
                <input type="text" name="name" value=" <%= s.getName() %> " />
                <br>
                <label>Address:</label>
                <br>
                <input type="text" name="address" value=" <%= s.getAddress() %> " />
                <br>
                <label>City:</label>
                <br>
                <input type="text" name="city" value=" <%= s.getCity() %> " />
                <br>
                <label>State:</label>
                <br>
                <input type="text" name="state" value=" <%= s.getState() %> " />
                <br>
                <label>Zip</label>
                <br>
                <input type="text" name="zip" value=" <%= s.getZipCode() %> " />
                <br>
                <label>Phone:</label>
                <br>
                <input type="text" name="phone" value=" <%= s.getPhoneNum() %> " />
                <br>
                <label>Email:</label>
                <br>
                <input type="text" name="email" value=" <%= s.getEmail() %> " />
                <br><br>
                <div class="form-check">
                    <label>Student Type:</label>
                    <br>
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="voiceOrPiano" id="stype" value=" <%= s.getVoiceOrPiano() %> ">
                        V
                    </label>
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="voiceOrPiano" id="stype" value=" <%= s.getVoiceOrPiano() %> ">
                        P
                    </label>
                </div>
                <br>
                <div class="form-group">
                    <label for="level">Student Level</label>
                    <select class="form-control" name="level">
                        <option value = "1">1</option>
                        <option value = "2">2</option>
                        <option value = "3">3</option>
                        <option value = "4">4</option>
                    </select>
                </div>
                <br>
                <div class="form-check">
                    <label>Gender:</label>
                    <br>
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender" id="gender" value="<%= s.getGender() %> ">
                        M
                    </label>
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender" id="gender" value=" <%= s.getGender() %> ">
                        F
                    </label>
                </div>

                <br><br>

                <input type="reset" name="reset" value="Clear" />
                <input type="submit" name="update" value="Update" />
            </form>
        </div> 
    </body>
</html>