<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>

<%

Connection con=null;
Statement st=null;
ResultSet rs=null;
   
   
  String name=request.getParameter("cname");
     String add=request.getParameter("cadd");
     String area=request.getParameter("carea");
     String city=request.getParameter("ccity");
     String state=request.getParameter("cstate");
     String cont=request.getParameter("ccont");
     String mail=request.getParameter("cmail");

try
{

 // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 // con=DriverManager.getConnection("jdbc:odbc:pp");

Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost/ippro","root","12345");
}

catch(ClassNotFoundException e1)
 {
 out.println(e1);
 }

catch(SQLException e2)
 {
 out.println(e2);
 }




   
          
try
 {
 st=con.createStatement();
 st.executeUpdate("insert into customers values('"+name+"','"+add+"','"+area+"','"+city+"','"+state+"','"+cont+"','"+mail+"')");
     
      
   }
   
catch(SQLException e3)
 {
 out.println(e3);
 }
catch(Exception e4)
 {
 out.println(e4);
 }


 
   %>
   