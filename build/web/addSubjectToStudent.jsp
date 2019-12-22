<%-- 
    Document   : addSubjectToStudent
    Created on : 31-Oct-2019, 13:17:43
    Author     : JKTP8
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Subject to Student</title>
        <style>
            a{
                font-size:30px;
            }
        </style>
    </head>
    <body>
        <div><a href="/SoftwareEngLab3">Home</a></div>
        <h1>Select Subject to add to Student</h1>
        <div>
            <form action="AddSubjectToStudent" method="post">
                <select id="subjectSelector" name="subjectSelector">
                    <c:forEach var="options" items="${subjects}">
                        <option value="${options.subjectCode}">${options.subjectCode}</option>
                    </c:forEach>
                </select>
                <input type="hidden" name="studentID" value="${param.studentID}"/>
                <input type="submit" value="Add Subject"/>
            </form>
        </div>
        
    </body>
</html>
