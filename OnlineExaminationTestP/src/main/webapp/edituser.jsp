

    <%@page import="project.UserDao"%>  
    <jsp:useBean id="b" class="project.User"></jsp:useBean>  
    <jsp:setProperty property="*" name="b"/>  
    <%  
    int i=UserDao.update(b);  
    response.sendRedirect("viewusers.jsp");  
    %>  

