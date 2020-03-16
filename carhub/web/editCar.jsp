<%-- 
    Document   : editCar
    Created on : Mar 14, 2020, 10:55:22 AM
    Author     : Najihah Zanudin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="img/mlogoo.png">
	<title>CH - Car Details
	</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.5.0/js/all.js"></script>
	<link href="style.css" rel="stylesheet">
</head>
<body>

<!-- Navigation -->
<%@include file="_navbarcustomer.jsp" %>

<!--CODE-->



<div class="container">
	<div class="row justify-content-lg-start">
		<div class="col col-lg-4">
			<div class="card mt-4">
                            <img class='card-img-top img-fluid' src='images/CARperoduabezza.png'>
				<div class="card-body">
					<hr><center><h1 class="card-title">CAR</h1></center>
				</div>
				
			</div>
		</div>
			
		<div class="col col-lg-8">
			<form method="post" action="admin_car_edit_update.php">
				<div class="card card-outline-secondary my-4">
					<div class="card-header">
						Info
					</div>
					
					<div class="card-body">
						<!----------------------------------------------------->
         <table class="table table-bordered" align="center">
            <tr>
              <td colspan="2"align="center"><h2>DETAILS</h2>
            </tr>
            <tr>
              <td width="50%" align="right">Car Registration No : 
              <td class="p-2">
                <input type="text" class="form-control" name="carplate" value="">
                <input type="text" name="carid" value="" hidden>
            </tr>
            <tr>
              <td width="50%" align="right">Car Brand : 
              <td class="p-2">
              	<div class="input-group">
              		<select name="carbrand" class="custom-select">
              			<option value="Honda"  >Honda</option>
              			<option value="Toyota"  >Toyota</option>
              			<option value="Perodua"  >Perodua</option>
              			<option value="Proton" >Proton</option>
              			<option value="Nissan"  >Nissan</option>
              		</select>
              	</div>
            </tr>
            <tr>
              <td width="50%" align="right">Car Name : 
              <td class="p-2"> <input type="text" class="form-control" name="carname" value=""> 
            </tr>
            <tr>
              <td align="right">Car Type : 
              <td class="p-2">
              	<div class="input-group">
              		<select name="cartype" class="custom-select">
              			<option value="Sedan" >Sedan</option>
              			<option value="Hatchback" >Hatchback</option>
              			<option value="Suv"  >Suv</option>
              		</select>
              	</div>
            </tr>
            <tr>
              <td align="right">Seating(s) : 
              <td class="p-2">
				        <div class="input-group">
              		<select name="carseat" class="custom-select">
              			<option value="1"  >1</option>
              			<option value="2"  >2</option>
              			<option value="3" >3</option>
              			<option value="4"  >4</option>
              			<option value="5">5</option>
              			<option value="6" >6</option>
              			<option value="7" >7</option>
              			<option value="8" >8</option>
              			<option value="9" >9</option>
              		</select>
              	</div>
            </tr>
            
            <tr>
              <td align="right">Transmission : 
              <td class="p-2">
                <div class="input-group">

<div class="custom-control custom-radio custom-control-inline">
<input type="radio" class="custom-control-input" id="Auto" name="cartrans" value="Auto" >
<label class="custom-control-label" for="Auto" >Auto</label>
</div>
<div class="custom-control custom-radio custom-control-inline">
<input type="radio" class="custom-control-input" id="Manual" name="cartrans" value="Manual" >
<label class="custom-control-label" for="Manual" >Manual</label>
</div>

                </div>

            </tr>
          </table>
          <hr>
          <!----------------------------------------------------->
          <table  class="table table-bordered" align="center">
            <tr>
              <td colspan="2"align="center"><h2>RATE</h2>
            </tr>
            <tr>
              <td width="50%" align="right">Per Hour :
              <td class="p-2"> <input type="text" class="form-control" name="rate" value="">
            </tr>
          </table>
				</div>
				<button value="Update" class="btn btn-success m-2" >Update</button>
				<a href="manageCar.jsp" class="btn btn-danger m-2">Cancel</a>
			</div>
		</form>
	</div>
	
</div>
</body>
</html>