<%-- 
    Document   : createStudent
    Created on : 31-Oct-2019, 10:50:52
    Author     : JKTP8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Student</title>
        <style>
            table,th,td {
                font-family: monospace;
                border: 0.5px solid black;
                border-collapse: collapse;
                padding: 15px;
            }
            caption{
                font-size: 30px;
            }
            a{
                font-size:30px;
            }
            
        </style>
    </head>
    <body>
        <div><a href="/SoftwareEngLab3">Home</a></div>
        <form id="createStudentForm" action="CreateStudent" method="post">
            <table style="width:50%">
                <caption>Create a new Student Record</caption>
                <tr><td style="background-color: #dddddd">ID</td><td><input type="text" id="id" name="id"/></td></tr>
                <tr><td style="background-color: #dddddd">First Name</td><td><input type="text" id="firstName" name="firstName"/></td></tr>
                <tr><td style="background-color: #dddddd">Surname</td><td><input type="text" id="surname" name="surname"/></td></tr>
                <tr><td style="background-color: #dddddd">e-mail</td><td><input type="text" id="email" name="email"/></td></tr>
            </table>
            <input type="submit" id="CreateStudentRecord" value="CreateStudentRecord"/>
        </form>
        <div><a href="/SoftwareEngLab3/getStudents">List Students</a></div>
    </body>
</html>
