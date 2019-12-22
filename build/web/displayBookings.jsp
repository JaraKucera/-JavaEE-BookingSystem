<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookings</title>
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
                <caption>Room Bookings</caption>
                <thead>
                    <tr style="background-color: #dddddd">
                        <td>ID</td>
                        <td>Room Number</td>
                        <td>Arrival Date</td>
                        <td>Departure Date</td>
                        <td>Description</td>
                    </tr>
                </thead>
                <c:forEach var="bk" items="${Bookings}">
                    <tr>
                        <td>${bk.userID}</td><td>${bk.roomNumber}</td><td>${bk.arrivalDate}</td><td>${bk.depatureDate}</td><td>${bk.description}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
