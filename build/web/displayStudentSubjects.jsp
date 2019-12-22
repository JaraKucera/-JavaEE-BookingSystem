<%-- 
    Document   : displayStudentSubjects
    Created on : 31-Oct-2019, 11:53:57
    Author     : JKTP8
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject List for Student</title>
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
        <h1>Subjects for ${currentStudent.firstName} ${currentStudent.lastName}</h1>
        <h3>ID: ${currentStudent.id}</h3>
        <table style="width:50%">
            <thead>
                    <tr style="background-color: #dddddd">
                        <td>Subject ID</td>
                        <td>Name</td>
                        <td>Description</td>
                        <td></td>
                    </tr>
                </thead>
                <c:forEach var="subject" items="${SubjectList}">
                    <tr>
                        <td>${subject.subjectCode}</td>
                        <td>${subject.name}</td>
                        <td>${subject.description}</td>
                        <td><form action="DeleteSubjectFromStudent" method="post">
                                <input type="hidden" name="subjectToDelete" value="${subject.subjectCode}"/>
                                <input type="submit" value="Delete"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>   
        </table>
        <div><a href="/SoftwareEngLab3/addSubjectToStudent.jsp">Add Subject</a></div>
    </body>
</html>
