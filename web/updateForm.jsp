
<%@ page import="model.Student"%>
<% Student s = (Student) request.getAttribute("s"); %>


<div class="modal fade" id="add" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">


                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Update A Student</h4>
                </div>
                <div class="modal-body">
                    <p>
                    <div class="main">
                        <form name="updateForm" action="updateStudent" method="get">
                            <label>Student ID:</label>
                            <br>
                            <input type="text" name="id" value="<%= s.getStudentID() %>" readonly />
                            <br>
                            <label>Name:</label>
                            <br>
                            <input type="text" name="make" value="<%= s.getName() %>" />
                            <br>
                            <label>Address:</label>
                            <br>
                            <input type="text" name="model" value="<%= s.getAddress() %>" />
                            <br>
                            <label>City:</label>
                            <br>
                            <input type="text" name="color" value="<%= s.getCity() %>" />
                            <br>
                            <label>State:</label>
                            <br>
                            <input type="text" name="year" value="<%= s.getState() %>" />
                            <br>
                            <label>Zip</label>
                            <br>
                            <input type="text" name="type" value="<%= s.getZipCode() %>" />
                            <br>
                            <label>Phone:</label>
                            <br>
                            <input type="text" name="type" value="<%= s.getPhoneNum() %>" />
                            <br>
                            <label>Email:</label>
                            <br>
                            <input type="text" name="type" value="<%= s.getEmail() %>" />
                            <br><br>
                            <div class="form-check">
                            <label>Student Type:</label>
                            <br>
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="stype" id="stype" value=" " checked>
                                    Voice
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="stype" id="stype" value=" ">
                                    Piano
                                </label>
                            </div>
                            <br>
                            <div class="form-group">
                                <label for="exampleSelect1">Student Level</label>
                                <select class="form-control" id="level" value=" ">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                </select>
                            </div>
                            <br>
                            <div class="form-check">
                            <label>Gender:</label>
                            <br>
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="gender" id="gender" value=" " checked>
                                    Male
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="gender" id="gender" value=" ">
                                    Female
                                </label>
                            </div>

                            <br><br>

                            <input type="reset" name="reset" value="Clear" />
                            <input type="submit" name="submit" value="Submit" />
                        </form>
                    </div> 
                  