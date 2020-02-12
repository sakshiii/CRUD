<%-- 
    Document   : deleteuser
    Created on : Mar 9, 2019, 5:05:12 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sakshi.UserDao" %>
<jsp:useBean id="u" class="com.sakshi.User">
    
</jsp:useBean>
<jsp:setProperty property="*" name="u"></jsp:setProperty>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    <%
        UserDao.delete(u);
        response.sendRedirect("viewuser.jsp");
     %>
     
     <form action="edituser.jsp" method="post"> 
         <input type="hidden" name="id" value="<%=u.getId()%>"/>
<table>  
    <tr><td>Name:</td><td><input type="text" name="name" value="<%=u.getName()%>"/></td></tr>  
<tr><td>Password:</td><td>  
<input type="password" name="password" <%=u.getPassword()%>/></td></tr>  
  
<tr><td>Sex:</td><td>  
<input type="radio" name="sex" value="male" />Male   
<input type="radio" name="sex" value="female"/>Female </td></tr>  
<tr><td>Country:</td><td>  
<select name="country" style="width:155px">  
<option>India</option>  
<option>Pakistan</option>  
<option>Afghanistan</option>  
<option>Berma</option>  
<option>Other</option>  
</select>  
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Add User"/>
    <input type="submit" value="Edit User"/>
    </td></tr>  


</table>  

</form>  

    </body>
</html>
