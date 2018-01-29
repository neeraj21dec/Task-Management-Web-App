<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>

<%

Connection con=null;
Statement st=null;
ResultSet rs=null;

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


 
   %>
   
   


	<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/stylepo.css" rel="stylesheet">
</head>

<body background="POLICE.jpg" style="height:1500px;color:white;">

    <!-- Start your project here-->
                  
                
<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-">

    <!-- Navbar brand -->
    <a class="navbar-brand" href="#">Admin Section</a>

    <!-- Collapse button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

    <!-- Collapsible content -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Links -->
       
        


        
        
        
        <!-- Links -->
<div class="dropdown">

            <!--Trigger-->
            <button class="btn btn-deep-orange dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >Account</button>
            

            <!--Menu-->
            <div class="dropdown-menu dropdown-primary">
                <a class="dropdown-item" href="#">My profile</a>
                <a class="dropdown-item" href="#">Logout</a>
         
            </div>
        </div>
        <!-- Search form -->
       
    </div>
    <!-- Collapsible content -->

</nav>
<!--/.Navbar-->
  
    <h1>Miscellaneous records</h1>
    
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
    add customer
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
                  <form method="get" action="cadd.jsp">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">customer add</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="color:black;position:relative;left:-40%;">
              
                <input type="text" placeholder="name"  name="cname"/>
                <input type="text" placeholder="address" name="cadd"/>
                <input type="text" placeholder="area"name="carea"/>
                <input type="text" placeholder="city"name="ccity"/>
                <input type="text" placeholder="state"name="cstate"/>
                <input type="number" placeholder="contact no"name="ccont"/>
                <input type="mail" placeholder="mail id"name="cmail"/>
              
                
                
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">add</button>
            </div>
        </div>
        </form>
    </div>
</div>
  
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal1">
    add engineer
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
          <form method="get" action="eadd.jsp">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">engineer add</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
          
            <div class="modal-body" style="color:black;position:relative;left:-40%;">
    
                
                <input type="text" placeholder="name" name="ename"/>
                <input type="text" placeholder="father name" name="efname"/>
                <input type="date" placeholder="dob" name="edob"/>
                <input type="text" placeholder="gender" name="egender"/>
                <input type="text" placeholder="address" name="eadd"/>
                <input type="text" placeholder="area" name="earea"/>
                <input type="text" placeholder="city" name="ecity"/>
                <input type="text" placeholder="state" name="estate"/>
                <input type="number" placeholder="contact no" name="econt"/>
                <input type="mail" placeholder="mail id" name="email"/><br/>
        <span style="position:relative;left:40%;">specialization:</span> <select name="es1" style="position:relative;left:40%;" ><option value="testing">testing</option>
                   <option value="development">development</option>
                 
            
</select> <br/>
              
                <input type="text" placeholder="Ecode" name="ecode"/>
                   <input type="date" placeholder="doj" name="edoj"/>
                <br/>
      
                   

            
</select> <br/>
                <br/>
       <span style="position:relative;left:40%;">status:</span> <select name="es3" style="position:relative;left:40%;" ><option value="present">present</option>
                   <option value="not present">not present</option>
            
</select> <br/>
            </div>
                </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">add</button>
            </div>
        </form>
        </div>
    </div>
</div>
  

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal2">
    add selection type
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
         <form method="get" action="sadd.jsp">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">selection add</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="color:black;position:relative;left:-40%;">
     <span style="position:relative;left:40%;">selection category:</span> <select name="ss1" style="position:relative;left:40%;" >
                <%
try
 {
 st=con.createStatement();
rs=st.executeQuery("select name from sel_cat");
    while(rs.next())
               {
               String criteria=rs.getString(1);%>
               <option value="<%= criteria %>"><%= criteria %></option>
                <%
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
   
                
                
            
</select> <br/>
               <input type="text" placeholder="selection type" name="stype"/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">add</button>
            </div>
        </div>
        </form>
    </div>
</div>
  
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal3">
    add selection categories
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
         <form method="get" action="scat.jsp">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">selection add</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" style="color:black;position:relative;left:-40%;">
   
               <input type="text" placeholder="selection category" name="slcat"/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">add</button>
            </div>
        </div>
        </form>
    </div>
</div>
  





<footer class="page-footer center-on-small-only mdb-color lighten-3" style="position:relative;top:-6px;">

    <!--Footer Links-->
    <div class="container">
        <div class="row my-4">

            <!--First column-->
            <div class="col-md-4 col-lg-4">
                <h5 class="title mb-4 font-bold">Customer Record Management System</h5>
                <p>Here you can add records for customers and manipulate them.</p>

            </div>
            <!--/.First column-->

            <hr class="clearfix w-100 d-md-none">

            <!--Second column-->
            <div class="col-md-2 col-lg-2 ml-auto">
                <h5 class="title mb-4 font-bold">About</h5>
                <ul>
                    
                    <p><a href="#!">about us</a></p>
                  
                </ul>
            </div>
            <!--/.Second column-->

            <hr class="clearfix w-100 d-md-none">

            <!--Third column-->
            <div class="col-md-4 col-lg-3">
                <h5 class="title mb-4 font-bold">Address</h5>
                <!--Info-->
                <p><i class="fa fa-home mr-3"></i>Ghore Wala Baba Chouraha KOTA,RAJASTHAN</p>
                <p><i class="fa fa-envelope mr-3"></i> KK@gmail.com</p>
                
                <p><i class="fa fa-print mr-3"></i> + 01 234 567 89</p>
            </div>
            <!--/.Third column-->

            <hr class="clearfix w-100 d-md-none">

            <!--Fourth column-->
        
            <!--/.Fourth column-->

        </div>
    </div>
    <!--/.Footer Links-->

    <!--Copyright-->
    <div class="footer-copyright">
        <div class="container-fluid">
            Website-Designer : NEERAJ ARORA<a href="#"> </a>

        </div>
    </div>
    <!--/.Copyright-->

</footer>
<!--/.Footer-->
                
            

    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
</body>

</html>
