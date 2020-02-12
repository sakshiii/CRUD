<%-- 
    Document   : error
    Created on : Mar 8, 2019, 11:46:35 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="u" class="com.sakshi.User"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP error Page</title>
    </head>
    <body>
        <h1>error occurred</h1>
        <% System.out.println(u.getSex()); %>
                
        <jsp:include page="userform.html"></jsp:include>
    </body>
</html>
