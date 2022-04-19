

    <%@page import="project.UserDao"%>  
    <jsp:useBean id="b" class="project.User"></jsp:useBean>  
    <jsp:setProperty property="*" name="b"/>  
    <%  
    UserDao.delete(b);  
    response.sendRedirect("viewusers.jsp");  
    %> 

