
<%@page import="com.sakshi.UserDao"%>
<jsp:useBean id="u" class="com.sakshi.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<!Doctype  html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% int i=UserDao.save(u);
       
            if(i>0)
            {
                response.sendRedirect("success.jsp");
                
            }
            else
            {
                response.sendRedirect("error.jsp");
                
            }
            
        %>
    </body>
</html>
