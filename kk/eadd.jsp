<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>

<%

Connection con=null;
Statement st=null;
ResultSet rs=null;
   
   
  String name=request.getParameter("ename");
     String fname=request.getParameter("efname");
     String dob=request.getParameter("edob");
     String gen=request.getParameter("egender");
     String add=request.getParameter("eadd");
     String area=request.getParameter("earea");
     String city=request.getParameter("ecity");
 String state=request.getParameter("estate");
    String cont=request.getParameter("econt");
    String mail=request.getParameter("email");
    String spec=request.getParameter("es1");
    String code=request.getParameter("ecode");
    String doj=request.getParameter("edoj");
    String status=request.getParameter("es3");
   
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
 st.executeUpdate("insert into engineer values('"+name+"','"+fname+"','"+dob+"','"+gen+"','"+add+"','"+area+"','"+city+"','"+state+"','"+cont+"','"+mail+"','"+spec+"','"+code+"','"+doj+"','"+status+"')");
     
      
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
   