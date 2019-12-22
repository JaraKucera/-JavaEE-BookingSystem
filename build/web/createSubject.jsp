<%-- 
    Document   : createSubject
    Created on : 31-Oct-2019, 09:54:51
    Author     : JKTP8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Creation</title>
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
        <form id="createSubjectForm" action="CreateSubject" method="post">
            <table style="width:50%">
                <caption>Create a new Subject Record</caption>
                <tr><td style="background-color: #dddddd">ID</td><td><input type="text" id="subjectCode" name="subjectCode"/></td></tr>
                <tr><td style="background-color: #dddddd">Name</td><td><input type="text" id="name" name="name"/></td></tr>
                <tr><td style="background-color: #dddddd">Description</td><td><input type="text" id="description" name="description"/></td></tr>
            </table>
            <input type="submit" id="CreateSubjectRecord" value="CreateSubjectRecord"/>
        </form>
        <div><a href="/SoftwareEngLab3/getSubjects">List Subjects</a></div>
    </body>
</html>
