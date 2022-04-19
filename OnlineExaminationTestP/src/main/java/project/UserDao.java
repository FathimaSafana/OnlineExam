

    package project;  
    import java.sql.*;  
    import java.util.ArrayList;  
    import java.util.List;

import project.User;  
    public class UserDao {  
      
    public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
    public static int save(User b){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "insert into  questions (question,a1,a2,a3,a4,ans) values(?,?,?,?,?,?)");  
            ps.setString(1,b.getQuestion());  
            ps.setString(2,b.getA1());  
            ps.setString(3,b.getA2());  
            ps.setString(4,b.getA3());  
            ps.setString(5,b.getA4());
            ps.setString(6,b.getAns());
            
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    
    public static int update(User b){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "update questions set question=?,a1=?,a2=?,a3=?,a4=?,ans=? where id=?");  
            ps.setString(1,b.getQuestion());  
            ps.setString(2,b.getA1());  
            ps.setString(3,b.getA2());  
            ps.setString(4,b.getA3());  
            ps.setString(5,b.getA4());  
            ps.setString(6,b.getAns());  
            ps.setInt(7,b.getId());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int delete(User b){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from questions where id=?");  
            ps.setInt(1,b.getId());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
      
        return status;  
    } 
    
    public static List<User> getAllRecords(){  
        List<User> list=new ArrayList<User>();  
          
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from questions");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                User b=new User();  
                b.setId(rs.getInt("id"));  
                b.setQuestion(rs.getString("question"));  
                b.setA1(rs.getString("a1"));  
                b.setA2(rs.getString("a2"));  
                b.setA3(rs.getString("a3"));  
                b.setA4(rs.getString("a4"));  
                b.setAns(rs.getString("ans"));
                list.add(b);  
            }  
        }catch(Exception e){System.out.println(e);}  
        return list;  
    }  
    public static User getRecordById(int id){  
        User b=null;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from questions where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                b=new User();  
                b.setId(rs.getInt("id"));  
                b.setQuestion(rs.getString("question"));  
                b.setA1(rs.getString("a1"));  
                b.setA2(rs.getString("a2"));  
                b.setA3(rs.getString("a3"));  
                b.setA4(rs.getString("a4"));  
                b.setAns(rs.getString("ans"));  
            }  
        }catch(Exception e){System.out.println(e);}  
        return b;  
    }  
    }  

