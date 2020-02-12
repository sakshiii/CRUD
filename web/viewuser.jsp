<%-- 
    Document   : viewuser
    Created on : Mar 9, 2019, 12:26:29 AM
    Author     : lenovo
--%>

<%@page import="com.sakshi.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="com.sakshi.UserDao,java.util.*" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        
        <h1>view the data :))))</h1>
        <%
            List <User> list=UserDao.getAllRecords();
            request.setAttribute("list",list);
          %>
          <table border="1" width="90%" >
              <tr><th>Id</th> <th>Name</th> <th>Password</th> <th>Sex</th> <th>Country</th> <th>Edit</th> <th>Delete</th></tr>
              <c:forEach items="${list}" var="u">
                  <tr>
                     
                       <td> ${u.getId()}</td>
                        <td> ${u.getName()}</td>
                         <td> ${u.getPassword()}</td>
                          <td> ${u.getSex()}</td>
                           <td> ${u.getCountry()}</td>
                           <td> <a href="editform.jsp?id=${u.getId()}">Edit</a> </td>
                           <td> <a href="deleteuser.jsp?id=${u.getId()}">Delete</a> </td>
                               
                  </tr>
              </c:forEach>
          </table>   
          <br><a href="adduserform.jsp">Add New user</a>
    </body>
</html>
