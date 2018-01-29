<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>

<%

Connection con=null;
Statement st=null;
ResultSet rs=null;
   
   
  String mail=request.getParameter("mail");
  String ecode=request.getParameter("ecode");
   

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
 rs=st.executeQuery("select * from engineer where mail='"+mail+"' and ecode='"+ecode+"'");
   
   if(rs.next())
   {
     response.sendRedirect("home.jsp");
     
   }
    else
   {
   response.sendRedirect("home.jsp");
   }
      
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
   