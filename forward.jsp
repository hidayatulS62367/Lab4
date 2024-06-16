<%-- 
    Document   : forward
    
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSP Standard Action(forward)</title>
    </head>
    <body>
        <h2>Using jsp:forward to display user info.</h2>
        <jsp:forward page="forwardInfo.jsp">
            <jsp:param name="U_Name" value="Nur Hidayatul Ain binti Haluwi"/>
            <jsp:param name="Email" value="hidayatulain321@gmail.com"/>
            <jsp:param name="Nationality" value="Malaysian"/>
            <jsp:param name="Background" value="Student"/>
        </jsp:forward>
    </body>
</html>
