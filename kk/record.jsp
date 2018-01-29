
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>
<%

Connection con=null;
Statement st=null,st1=null;
ResultSet rs=null,rs1=null;

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

<body background="POLICE.jpg" style="height:1500px;">

    <!-- Start your project here-->
                  
                
<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-">

    <!-- Navbar brand -->
    <a class="navbar-brand" href="#">Record Work</a>

    <!-- Collapse button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

    <!-- Collapsible content -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Links -->
       
        


        
        
        
        <!-- Links -->
<div class="dropdown">

            <!--Trigger-->
            <button class="btn btn-deep-orange dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="postion:relative;left:800%;">Account</button>
            

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
  
            
<form name="rec" method="get" action="home.jsp">
    
    <div class="card" style="height:2600px;">
    <div class="card-header deep-orange lighten-1 white-text">
        Enter Record:
    </div>
    <div class="card-body">
        <h4 class="card-title">Customer Details</h4>
        <input type="text" style="width:390px;" placeholder="WorkID: "/><br/>
         <input type="text" style="width:390px;" placeholder="Customer name: "/><br/>
        <input type="text" style="width:390px;" placeholder="Wk shop No."/><br/><br/><br/><br/><br/>
        <h4 class="card-title">Work Details</h4>
        
        Work Recorded: <select name="s2" style="width:390px;position:relative;left:32%;";>
        
          <%
try
 {
 st=con.createStatement();
rs=st.executeQuery("select stype from selection_type where selection_cat='Work Recorded' ");
    while(rs.next())
               {
               String wr=rs.getString(1);%>
               <option value="<%= wr %>"><%= wr %></option>
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
        Item Type: <select name="s2" style="width:390px;position:relative;left:32%;";>
                   
                   
                   
                     <%
try
 {
 st1=con.createStatement();
rs1=st1.executeQuery("select stype from selection_type where selection_cat='Item type' ");
    while(rs1.next())
               {
               String it=rs1.getString(1);%>
               <option value="<%= it %>"><%= it %></option>
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
        
        Problem Type: <select name="s2" style="width:390px;position:relative;left:32%;";><option value="hardware">hardware</option>
                   <option value="software">software</option>
                   
            
</select> 
        <br/>
        Work Location: <select name="s2" style="width:390px;position:relative;left:32%;";><option value="kota">kota</option>
                  
            
</select> 
        <br/>
        Item Sr. No. <select name="s2" style="width:390px;position:relative;left:32%;";><option value="1234">1234</option>
                   
            
</select> 
        <br/>
      <textarea rows="4" cols="50" style="width:390px;position:relative;left:32%;" name="pd" >
          problem description

</textarea><br/>
        Work Type: <select name="s2" style="width:390px;position:relative;left:32%;;" ><option value="ram">ram change</option>
                 
            
</select> <br/>
        
<input type="text" placeholder="Item Make" style="width:390px;" /><br/>
        Work Received:<input type="date" style="width:390px;;position:relative;left:32%;" />
        <input type="time" style="width:390px;;position:relative;left:32%;" />
        
      <br/><br/><br/><br/><br/>
        <h4 class="card-title">Work Assignment</h4>
       EngineerName: <select name="s2" style="width:390px;position:relative;left:32%;" ><option value="neeraj">Neeraj</option>
                  
            
</select> <br/>
        <textarea rows="4" cols="50" style="width:390px;position:relative;left:32%;" >
Work Remarks
</textarea><br/>
        Work Assigned Date:<input type="date" style="width:390px;" /><br/><br/><br/><br/><br/>
        <h4 class="card-title">Work Status</h4>
        <input type="text" placeholder="CER No" style="width:390px;" />
        <br/><br/>
       Wrok Status: <select name="s2"style="width:390px;position:relative;left:32%;"  ><option value="dome">done</option>
                   
            
</select> <br/>
          MAterial Status: <select name="s2" style="width:390px;position:relative;left:32%;" ><option value="needed">Needed</option>
                   
</select> <br/>
        
        Work complete date:
        <input type="date" style="width:390px;" /><br/>
        
        <u><b>Return Item</b></u><br/>
       Return Reason: <select name="s2" style="width:390px;position:relative;left:32%;" ><option value="damaged">damaged</option>
                  
            
</select> <br/>
        
        Return date:
        <input type="date" style="width:390px;" />
        <br/><br/>
          <textarea rows="4" cols="50" style="width:390px;position:relative;left:32%;" >
Return remarks
</textarea>
        <br/><br/><br/><br/><br/>
        <h4 class="card-title">Replacement Work</h4>
        
        
        <b><u>Send to service center:</u></b><br/>
      service center name: <select name="s2" style="width:390px;position:relative;left:32%;" ><option value="kk">kk</option>
                  
            
</select> <br/>
        sending method: <select name="s2"style="width:390px;position:relative;left:32%;"  ><option value="courier">courier</option>
                   
            
</select> <br/>
        
        <input type="text" placeholder="sending person" style="width:390px;" /><br/><br/>
        
        Courier Name: <select name="s2"style="width:390px;position:relative;left:32%;"  ><option value="neerajc">Neeraj</option>
                   
            
</select> <br/>
        <input type="text" placeholder="Docketno/AWb" style="width:390px;" /><br/>
Send Date:
 <input type="date" style="width:390px;" /><br/>
        
        <b><u>Receive from service center:</u></b><br/>
        Received Date:<input type="date"style="width:390px;" /><br/>
            <input type="text" placeholder="Received By" style="width:390px;" /><br/>
        <input type="text" placeholder="Item serial no"style="width:390px;" /><br/>
        <input type="text" placeholder="Center charge"style="width:390px;" /><br/>
        <input type="text" placeholder="courier charge"style="width:390px;" /><br/>
        <input type="text" placeholder="total charge"style="width:390px;" /><br/>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <br/><br/><br/><br/><br/>
        
             <h4 class="card-title">Delivered to Customer</h4>
        
        
        date:<input type="date"style="width:390px;" /><br/>
        <input type="text" placeholder="person"style="width:390px;" /><br/>
        <input type="text" placeholder="amount received"style="width:390px;" /><br/><br/><br/><br/><br/>
        
        Work closed:<input type="checkbox"style="width:390px;position:relative;left:32%;" /><br/><br/>
       closed date: <input type="date"style="width:390px;" />
        <br/><br/><br/><br/>
                   <button type="submit" class="btn btn-deep-orange" >Submit</button>
    </div>
</div>

</form>
            

  




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
