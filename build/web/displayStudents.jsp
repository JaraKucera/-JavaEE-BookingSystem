<%-- 
    Document   : displayStudents
    Created on : 30-Oct-2019, 17:50:23
    Author     : JKTP8
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Students</title>
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
        <div>
            <table style="width:50%">
                <caption>Students</caption>
                <thead>
                    <tr style="background-color: #dddddd">
                        <td>ID</td>
                        <td>First Name</td>
                        <td>Last Name</td>
                        <td>E-mail</td>
                        <td>+/-</td>
                        <td>Enrollments</td>
                    </tr>
                </thead>
                <c:forEach var="s" items="${students}">
                    <tr>
                        <td>${s.id}</td>
                        <td>${s.firstName}</td>
                        <td>${s.lastName}</td>
                        <td>${s.email}</td>
                        <td><form action="DeleteStudent" method="post">
                                <input type="hidden" name="studentID" value="${s.id}"/>
                                <input type="submit" value="Delete"/>
                            </form>
                        </td>
                        <td><form action="ListStudentSubjects" method="post">
                                <input type="hidden" name="studentID" value="${s.id}"/>
                                <input type="submit" value="Subjects"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div><a href="/SoftwareEngLab3/createStudent.jsp">Create a new Student Record</a></div>
    </body>
</html>
