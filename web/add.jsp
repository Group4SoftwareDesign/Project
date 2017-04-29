<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A Student</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <div class="main">
            <form name="addForm" action="addStudent" method="get">

                <label>Name:</label>
                <br>
                <input type="text" name="name" value="" />
                <br>
                <label>Address:</label>
                <br>
                <input type="text" name="address" value="" />
                <br>
                <label>City:</label>
                <br>
                <input type="text" name="city" value="" />
                <br>
                <label>State:</label>
                <br>
                <input type="text" name="state" value="" />
                <br>
                <label>Zip</label>
                <br>
                <input type="text" name="zip" value="" />
                <br>
                <label>Phone:</label>
                <br>
                <input type="text" name="phone" value="" />
                <br>
                <label>Email:</label>
                <br>
                <input type="text" name="email" value="" />
                <br><br>
                <div class="form-check">
                    <label>Student Type:</label>
                    <br>
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="voiceOrPiano" id="stype" value="V">
                        V
                    </label>
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="voiceOrPiano" id="stype" value="P">
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
                        <input type="radio" class="form-check-input" name="gender" id="male" value="M">
                        M
                    </label>
                    <label class="form-check-label">
                        <input type="radio" class="form-check-input" name="gender" id="female" value="F">
                        F
                    </label>
                </div>

                <br><br>

                <input type="reset" name="reset" value="Clear" />
                <input type="submit" name="submit" value="Submit" />
            </form>
        </div> 
    </body>
</html>