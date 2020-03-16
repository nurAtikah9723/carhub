<%-- 
    Document   : homecustomer
    Created on : Mar 14, 2020, 9:24:25 AM
    Author     : Najihah Zanudin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style>
.slidecontainer {
    width: 100%;
}

.slider {
    -webkit-appearance: none;
    width: 100%;
    height: 15px;
    border-radius: 5px;
    background: #ff9900;
    outline: none;
    opacity: 0.7;
    -webkit-transition: .2s;
    transition: opacity .2s;
}

.slider:hover {
    opacity: 1;
}

.slider::-webkit-slider-thumb {
    -webkit-appearance: none;
    appearance: none;
    width: 25px;
    height: 25px;
    border-radius: 50%;
    background: #000000;
    cursor: pointer;
}

.slider::-moz-range-thumb {
    width: 25px;
    height: 25px;
    border-radius: 50%;
    background: #4CAF50;
    cursor: pointer;
}

tr,td{
	padding:10px;
</style>



<!------------------- Script ------------------->
<%@include file="_head.jsp" %>
<!------------------- ------ ------------------->
<title> CH - Booking </title>
</head>
<body>
<!----------------- Navigation ----------------->
<%@include file="_navbarcustomer2.jsp" %>
<!----------------- ---------- ----------------->

<!------------------- Coding ------------------->
<section id="intro">
	<div class="rentalheader">
		<h1 class="display-3" style="color:orange;">BOOKING CAR RENTAL</h1>
		<h3 style="color:white; text-shadow: 3px 2px black;">OPEN FROM : 8AM - 11PM</h3>
		<h5 style="color:white; text-shadow: 3px 2px black;">Please enter your duration for booking rental and start time here</h5>
	</div>
</section>

<form method="get" action="bookingCar.jsp">

    <div class="container-fluid padding">
	<div class="row welcome text-center">
		
            <div class="col-sm-6">
                <div class="slidecontainer">
                  <input type="range" min="1" max="12" value="0" class="slider" id="rangeinput" name="duration">
                    <br><br> 
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Booking For</h5>
                            <h1 class="card-text"><span id="rangeoutput"></span> Hours</h1>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="slidecontainer">
                    <input type="range" min="8" max="22" value="8" class="slider" id="startinput" name="start">
                    <br><br>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Start Time</h5>
                            <h1 class="card-text"><span id="startoutput"></span> <span id="indicator"></span></h1>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="text-center">
        <h6>Maximum duration : <span id="maxinput"></span> Hour(s)</h6><hr>
            <input id="enabler" type="checkbox" onChange="enablesubmit();"> I agree to the Terms and Conditions of CarHub agreements

            <div class="container col-sm-4">
                <h1>
                <a class="nav-link" href="#">
                <button class="btn btn-lg btn-success btn-block" type="submit" id="proceed" disabled>Proceed</button>
                </a></h1>
            </div>

      </div>

</form>


</body>
</html>

<script type="text/javascript">
var z = document.getElementById("maxinput");
var slider1 = document.getElementById("rangeinput");
var output1 = document.getElementById("rangeoutput");
output1.innerHTML = slider1.value;
	
slider1.oninput = function() {
  output1.innerHTML = this.value;
}

var slider2   = document.getElementById("startinput");
var output2   = document.getElementById("startoutput");
var indicator = document.getElementById("indicator");
output2.innerHTML = slider2.value;
indicator.innerHTML = "AM";









slider2.oninput = function() {

if(slider2.value>12)
{
	output2.innerHTML = slider2.value-12;
	indicator.innerHTML = "PM";
}

else if(slider2.value==12)
{
	output2.innerHTML = slider2.value;
	indicator.innerHTML = "PM";
}

else
{
	output2.innerHTML = this.value;
	indicator.innerHTML = "AM";
}
//---------------------------------
if(slider2.value>11)
{
    z.innerHTML = 23-slider2.value;
}
else
    z.innerHTML = 0;
}

function enablesubmit()
{
	var x = document.getElementById('enabler');
	var y = document.getElementById('proceed');

	if(x.checked ==true)
	y.disabled = false;
	else
	y.disabled = true;	
}
</script>











