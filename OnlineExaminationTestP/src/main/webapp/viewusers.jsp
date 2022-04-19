

    <!DOCTYPE html>  
      
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
    <title>View Users</title>  
    </head>  
    <body>  
      
    <%@page import="project.UserDao,project.*,java.util.*"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
      
    <h1>Question List</h1>  
      
    <%  
    List<User> list=UserDao.getAllRecords();  
    request.setAttribute("list",list);  
    %>  
      
    <table border="1" width="90%">  
    <tr><th>Id</th><th>Question</th><th>Option1</th><th>Option2</th>  
    <th>Option3</th><th>Option4</th><th>Answer</th><th>Edit</th><th>Delete</th></tr>  
    <c:forEach items="${list}" var="u">  
    <tr><td>${u.getId()}</td><td>${u.getQuestion()}</td><td>${u.getA1()}</td>  
    <td>${u.getA2()}</td><td>${u.getA3()}</td><td>${u.getA4()}</td><td>${u.getAns()}</td>
    <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
    <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
    </c:forEach>  
    </table>  
    <br/><a href="adduserform.jsp">Add New Question</a>  
      
    </body>  
    </html>  

