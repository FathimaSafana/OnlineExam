

    <%@page import="project.UserDao"%>  
    <jsp:useBean id="b" class="project.User"></jsp:useBean>  
    <jsp:setProperty property="*" name="b"/>  
      
    <%  
    int i=UserDao.save(b);  
    if(i>0){  
    response.sendRedirect("adduser-success.jsp");  
    }else{  
    response.sendRedirect("adduser-error.jsp");  
    }  
    %>  

