

    <!DOCTYPE html>  
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
    <title>Edit Form</title>  
    </head>  
    <body>  
    <%@page import="project.*,project.*"%>  
      
    <%  
    String id=request.getParameter("id");  
    User b=UserDao.getRecordById(Integer.parseInt(id));  
    %>  
      
    <h1>Edit Form</h1>  
    <form action="edituser.jsp" method="post">  
    <input type="hidden" name="id" value="<%=b.getId() %>"/>  
    <table>  
    <tr><td>Question:</td><td>  
    <input type="text" name="question" value="<%= b.getQuestion()%>"/></td></tr>  
    <tr><td>Option1:</td><td>  
    <input type="text" name="a1" value="<%= b.getA1()%>"/></td></tr> 
    <tr><td>Option2:</td><td>  
    <input type="text" name="a2" value="<%= b.getA2()%>"/></td></tr> 
    <tr><td>Option3:</td><td>  
    <input type="text" name="a3" value="<%= b.getA3()%>"/></td></tr> 
    <tr><td>Option4:</td><td>  
    <input type="text" name="a4" value="<%= b.getA4()%>"/></td></tr> 
    <tr><td>Answer:</td><td>  
    <input type="text" name="ans" value="<%= b.getAns()%>"/></td></tr> 
    
    
    
   
    </td></tr>  
    <tr><td colspan="2"><input type="submit" value="Edit Question"/></td></tr>  
    </table>  
    </form>  
      
    </body>  
    </html>  

