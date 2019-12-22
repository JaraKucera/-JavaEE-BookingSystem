<%-- 
    Document   : addStudentToSubject
    Created on : 31-Oct-2019, 18:01:08
    Author     : JKTP8
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student to Subject</title>
        <style>
            a{
                font-size:30px;
            }
        </style>
    </head>
    <body>
        <div><a href="/SoftwareEngLab3">Home</a></div>
        <h1>Select Student to add to Subject</h1>
        <div>
            <form action="AddStudentToSubject" method="post">
                <select id="studentSelector" name="studentSelector">
                    <c:forEach var="options" items="${students}">
                        <option value="${options.id}">${options.firstName} ${options.lastName}</option>
                    </c:forEach>
                </select>
                <input type="hidden" name="subjectID" value="${param.subjectID}"/>
                <input type="submit" value="Add Student"/>
            </form>
        </div>
    </body>
</html>
