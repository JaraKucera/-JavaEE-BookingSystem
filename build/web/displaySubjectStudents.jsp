<%-- 
    Document   : displaySubjectStudents
    Created on : 31-Oct-2019, 17:39:29
    Author     : JKTP8
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student List for Subject</title>
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
            body{
                font-family: monospace;
            }
            
        </style>
    </head>
    <body>
        <div><a href="/SoftwareEngLab3">Home</a></div>
        <h1>Students for ${currentSubject.name}</h1>
        <h3>ID: ${currentSubject.subjectCode}</h3>
        <table style="width:50%">
            <thead>
                    <tr style="background-color: #dddddd">
                        <td>Student ID</td>
                        <td>First Name</td>
                        <td>Surname</td>
                        <td></td>
                    </tr>
                </thead>
                <c:forEach var="student" items="${StudentList}">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.firstName}</td>
                        <td>${student.lastName}</td>
                        <td><form action="DeleteStudentFromSubject" method="post">
                                <input type="hidden" name="studentToDelete" value="${student.id}"/>
                                <input type="submit" value="Delete"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
        </table>
        <div><a href="/SoftwareEngLab3/addStudentToSubject.jsp">Add Student</a></div>
    </body>
</html>
