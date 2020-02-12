<%-- 
    Document   : edituser
    Created on : Mar 9, 2019, 5:03:44 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%@page import="com.sakshi.UserDao" %>
        <jsp:useBean id="u" class="com.sakshi.User"></jsp:useBean>
        <jsp:setProperty property="*" name="u"/>
        <%
            int i=UserDao.update(u);
            response.sendRedirect("viewuser.jsp");
            
        %>
    </body>
</html>
