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
    <a class="navbar-brand" href="#">Engineer</a>

    <!-- Collapse button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

    <!-- Collapsible content -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">

        <!-- Links -->
       
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
              <font color="deep-orange">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Entry space</a>
                <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">		
                    <a class="dropdown-item" href="record.jsp">work record</a>
                   
                    
                </div>
            </li>

</font>


              <font color="deep-orange">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tools</a>
                <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">		
                    <a class="dropdown-item" href="#">Search by criteria</a>
                    <a class="dropdown-item" href="#">send mail</a>
                    
                </div>
            </li>

</font>


  <font color="deep-orange">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Reports</a>
                <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">		
                    <a class="dropdown-item" href="#">Excel export Report</a>

                    
                </div>
            </li>

</font>




          




        </ul>
      


        
        
        
        <!-- Links -->
<div class="dropdown">

            <!--Trigger-->
            <button class="btn btn-deep-orange dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Account</button>
            

            <!--Menu-->
            <div class="dropdown-menu dropdown-primary">
                <a class="dropdown-item" href="#">My profile</a>
                <a class="dropdown-item" href="front.jsp">Logout</a>
         
            </div>
        </div>
        <!-- Search form -->
       
    </div>
    <!-- Collapsible content -->

</nav>
<!--/.Navbar-->
  
            

    
<div class="card" style="width:350px;margin:10px;">
    <div class="card-header deep-orange lighten-1 white-text">
       Customers
    </div>
    <div class="card-body">
        <h4 class="card-title">Select Customer</h4>
        
        <select name="s1" multiple style="width:300px;height:500px;">
            <%
try
 {
 st=con.createStatement();
rs=st.executeQuery("select name from customers");
    while(rs.next())
               {
               String name=rs.getString(1);%>
               <option value=""><%= name %></option>
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
   
            

</select><br/>                    
     
       
    </div>
    </div>
 <form name="filter" method="get" action="">
    <div class="card" style="width:1000px;margin:10px;position:relative;left:30%;top:-630px;height:300px;">
    <div class="card-header deep-orange lighten-1 white-text">
       Selection
    </div>
       
    <div class="card-body">
        
        
        Criteria: <select name="s2" >
        
        <%
try
 {
 st1=con.createStatement();
rs1=st1.executeQuery("select name from sel_cat");
    while(rs1.next())
               {
               String criteria=rs1.getString(1);%>
               <option value="name"><%= criteria %></option>
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
   
        
            
</select> 
          
     
       <span style="position:relative;left:30%;">Value:</span><input type="text" placeholder="enter value" style="width:300px;postion:relative;top:-2px;left:35%;"/><br/><br/>
        
        
        <input type="checkbox" style="position:relative;left:-1%;"/>Unclosed Record<br/><br/>
        
        <span >From:</span><input type="date" style="position:relative;left:5%;width:200px;"/>
        <br/>
        <span>To:</span><input type="date" style="position:relative;left:5%;width:200px;"/>
        <br/>
    <button type="submit" class="btn btn-deep-orange" style="postion:relative;left:40%;">Filter</button>
    </div>
           
    </div>
     
     
            </form> 
    
    

<div class="card" style="width:1000px;position:relative;left:30%;top:-600px;">
    <div class="card-body">

        <div class="table-wrapper-2" style=" display: block;
    max-height: 300px;
    overflow-y: auto;
    -ms-overflow-style: -ms-autohiding-scrollbar;">

            <!--Table-->
            <table class="table table-responsive">
                <thead class="mdb-color lighten-4">
                    <tr>
                        <th>SN.</th>
                        <th class="th-lg">AutoID</th>
                        <th class="th-lg">CustomerName</th>
                        <th class="th-lg">WorkshopNo</th>
                        <th class="th-lg">WorkRecorded</th>
                        <th class="th-lg">WorkLocation</th>
                        <th class="th-lg">WorkType</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                       <th scope="row">1</th>
                        <td>Kate</td>
                        <td>Moss</td>
                        <td>USA</td>
                        <td>New York City</td>
                        <td>Web Designer</td>
                        <td>23</td>
                        
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Anna</td>
                        <td>Wintour</td>
                        <td>United Kingdom</td>
                        <td>London</td>
                        <td>Frontend Developer</td>
                        <td>36</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Tom</td>
                        <td>Bond</td>
                        <td>Spain</td>
                        <td>Madrid</td>
                        <td>Photographer</td>
                        <td>25</td>
                    </tr>
                    <tr>
                        <th scope="row">4</th>
                        <td>Jerry</td>
                        <td>Horwitz</td>
                        <td>Italy</td>
                        <td>Bari</td>
                        <td>Editor-in-chief</td>
                        <td>41</td>
                    </tr>
                    <tr>
                        <th scope="row">5</th>
                        <td>Janis</td>
                        <td>Joplin</td>
                        <td>Poland</td>
                        <td>Warsaw</td>
                        <td>Video Maker</td>
                        <td>39</td>
                    </tr>
                    <tr>
                        <th scope="row">6</th>
                        <td>Gary</td>
                        <td>Winogrand</td>
                        <td>Germany</td>
                        <td>Berlin</td>
                        <td>Photographer</td>
                        <td>37</td>
                    </tr>
                    <tr>
                        <th scope="row">7</th>
                        <td>Angie</td>
                        <td>Smith</td>
                        <td>USA</td>
                        <td>San Francisco</td>
                        <td>Teacher</td>
                        <td>52</td>
                    </tr>
                    <tr>
                        <th scope="row">8</th>
                        <td>John</td>
                        <td>Mattis</td>
                        <td>France</td>
                        <td>Paris</td>
                        <td>Actor</td>
                        <td>28</td>
                    </tr>
                    <tr>
                        <th scope="row">9</th>
                        <td>Otto</td>
                        <td>Morris</td>
                        <td>Germany</td>
                        <td>Munich</td>
                        <td>Singer</td>
                        <td>35</td>
                    </tr>
                </tbody>
            </table>
            <!--Table-->

        </div>

    </div>
</div>
                

  

<div name="bu">
    
    <button type="button" class="btn btn-deep-orange" style="position:relative;top:-650px;">Add Customer</button>
    <button type="button" class="btn btn-deep-orange" style="position:relative;top:-650px;">Record Work</button>
    <button type="button" class="btn btn-deep-orange" style="position:relative;top:-650px;left:35%;height:50px;">Edit</button>
     
    
    
    
    </div>


<footer class="page-footer center-on-small-only mdb-color lighten-3" style="position:relative;top:-600px;">

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
