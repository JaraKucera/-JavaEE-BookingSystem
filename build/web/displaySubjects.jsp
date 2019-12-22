<%-- 
    Document   : displaySubjects
    Created on : 31-Oct-2019, 09:47:53
    Author     : JKTP8
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subjects</title>
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
                <caption>Subjects</caption>
                <thead>
                    <tr style="background-color: #dddddd">
                        <td>ID</td>
                        <td>Name</td>
                        <td>Description</td>
                        <td>+/-</td>
                        <td>Enrollments</td>
                    </tr>
                </thead>
                <c:forEach var="sub" items="${subjects}">
                    <tr>
                        <td>${sub.subjectCode}</td>
                        <td>${sub.name}</td>
                        <td>${sub.description}</td>
                        <td><form action="DeleteSubject" method="post">
                                <input type="hidden" name="subjectID" value="${sub.subjectCode}"/>
                                <input type="submit" value="Delete"/>
                            </form>
                        </td>
                        <td><form action="ListSubjectStudents" method="post">
                                <input type="hidden" name="subjectID" value="${sub.subjectCode}"/>
                                <input type="submit" value="Students"/>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div><a href="/SoftwareEngLab3/createSubject.jsp">Create a new Subject</a></div>
    </body>
</html>
