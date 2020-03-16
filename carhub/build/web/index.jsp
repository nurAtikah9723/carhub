<%-- 
    Document   : index
    Created on : Mar 14, 2020, 9:15:27 AM
    Author     : Najihah Zanudin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<!------------------- Script ------------------->
<%@include file="_head.jsp" %>
<!------------------- ------ ------------------->
<title>CH - Login</title>
</head>
<body>
<!----------------- Navigation ----------------->
<%@include file="_navbarcustomer.jsp" %>
<!----------------- ---------- ----------------->

<!------------------- Coding ------------------->
<div id="slides" class="carousel slide" data-ride="carousel" >
<ul class="carousel-indicators">
	<li data-target="#slides" data-slide-to="0" class="active"></li>
	<li data-target="#slides" data-slide-to="1"></li>
	<li data-target="#slides" data-slide-to="2"></li>
</ul>

		<img src="images/newcarbg2.png">
		<div class="carousel-caption">
			<h1 class="display-3">Only The Best Car For Our Customer</h1>
			<h3>Our Services has variety of selected and great rated car for our customer satisfaction</h3>
		</div>
	</div>

<!--- Jumbotron -->
<div class="container-fluid">
<div class="row jumbotron">
	<div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 col-xl-10">
		<p class="lead"> CARHUB is a car-rental platform that allows you to book a car which suits your needs by the hourly, dayly or weekly all through using our mobile application. CARHUB reservation includes insurance. Just call our Customer Service, and we'll let you know step by step. Insurance assistance runs 24hours 7 days a week on ERS(Emergency Roadside Service).</p>
	</div>
	<div class="col-xs-12 col-ms12 col-md-3 col-lg-3 col-xl-2">
		<a class="nav-link" href="login.jsp"><button type="button" class="btn btn-outline-secondary btn-lg">BOOK NOW</button></a>
	</div>
</div>
</div>

<!--- Welcome Section -->
<div class="container-fluid padding">
<div class="row welcome text-center">
	<div class="col-12">
		<h1 class="display-4">WHY CARHUB?</h1>
	</div>
	<hr>
	<div class="col-12">
		<p class="lead"> Rent car without any worries about any possibilities. We provided our customer with various benefit that satisty all customer need when it comes to renting a car. FREE YOURSELF. OWN THE EXPERIENCE.</p>
	</div>
</div>
</div>

<!--- Three Column Section -->
<div class="container-fluid padding">
<div class="row text-center padding">
	<div class="col-xs-12 col-sm-6 col-md-4">
		<i class="fas fa-hand-holding-usd"></i>
		<h3>Affordable Rates</h3>
		<p>CARHUB from Hatchback to SUV, As low as RM5/hour</p>
	</div>
	<div class="col-xs-12 col-sm-6 col-md-4">
		<i class="far fa-clock"></i>
		<h3>Flexible Timing</h3>
		<p>Drive any CARHUB from 30 minutes to however long you desire</p>
	</div>
	<div class="col-sm-12 col-md-4">
		<i class="fas fa-smile"></i>
		<h3>Customer Friendly</h3>
		<p>Our staff are ready to provided any services and help from customer regardless about the rental car</p>
	</div>
</div>
<hr class="my-4">
</div>
<p class="mt-5 mb-3 text-muted" align="center">&copy; 2020 CarHub Company</p>


</body>
</html>























