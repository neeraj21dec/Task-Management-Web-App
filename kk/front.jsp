<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>


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
    <link href="css/style.css" rel="stylesheet">


</head>

<body background="POLICE.jpg">

    <!-- Start your project here-->
    
    <div class="name" style="width:400px;height:50px;">
        <h2 style="color:#ff7043;">Kay Kay Enterprises Limited</h2><br/>
        <h5 style="color:white;position:relative;left:53%;top:-30px;">KOTA,RAJASTHAN</h5>
        
        
    </div>
 
    <div class="register">
   <button type="button" class="btn btn-deep-orange">Register</button>
   </div>
                
<br/><br/>  

<!--Panel-->
    <form method="get" action="login.jsp">
<div class="police">
<div class="card">
    <div class="card-header deep-orange lighten-1 white-text">
        Engineer Login:
    </div>
    
    <div class="card-body">
        <div class="md-form">
    <input type="text" id="form1" class="form-control" name="id">
    <label for="form1" class="">email</label>
</div>
           <div class="md-form">
    <input type="password" id="form1" class="form-control" name="ecode">
    <label for="form1" class="">ecode</label>
</div>
           
        <button type="submit" class="btn btn-deep-orange">Login</button>
    </div>
</div>
</div>
        </form>
<!--/.Panel-->


<br/><br/><br/>
<!--Footer-->
<footer class="page-footer center-on-small-only mdb-color lighten-3">

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
                    <p><a href="admin.jsp">admin</a></p>
                  
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
