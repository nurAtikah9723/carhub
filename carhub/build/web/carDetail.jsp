<%-- 
    Document   : carDetail
    Created on : Mar 14, 2020, 10:09:08 AM
    Author     : Najihah Zanudin
--%>

<!doctype html>
<html lang="en">
<style>
.filterDiv {
  display: none;
}

.show {
  display: block;
}
</style>
<head>
  

<!------------------- Script ------------------->
<%@include file="_head.jsp"%>
           
<title> CH - Home </title>
</head>
<body>
<!----------------- Navigation ----------------->
<%@include file="_navbarcustomer2.jsp"%>
<!----------------- ---------- ----------------->

<!------------------- Coding ------------------->
<div class="container">
  <div class="row justify-content-lg-start">
    <div class="col col-lg-4">
      <div class="card mt-4">
        <img class='card-img-top img-fluid' src='images/CARhondacity.png'>
        <hr>
        <div class="card-body">
          <center><h1 class="card-title">Car Name </h1></center>
        </div>
        
      </div>
    </div>
    <div class="col col-lg-8">
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
              <td width="50%" align="right"><b>Status</b>
              <td width="50%" align="left">Available
            </tr>
            <tr>
              <td width="50%" align="right"><b>Car ID</b> 
              <td width="50%" align="left">
            </tr>
            <tr>
              <td width="50%" align="right"><b>Registration No</b>
              <td width="50%" align="left">
            </tr>
            <tr>
              <td width="50%" align="right"><b>Brand</b>
              <td width="50%" align="left">
            </tr>
            <tr>
              <td width="50%" align="right"><b>Name</b>
              <td width="50%" align="left">
            </tr>
            <tr>
              <td width="50%" align="right"><b>Type</b>
              <td width="50%" align="left">
            <tr>
              <td width="50%" align="right"><b>Seating(s)</b>
              <td width="50%" align="left">
            </tr>
            <tr>
              <td width="50%" align="right"><b>Transmission</b>
              <td width="50%" align="left">
            </tr>
          </table>
          <hr>
          <!----------------------------------------------------->


          <table  class="table table-bordered" align="center">
            <tr>
              <td colspan="2"align="center"><h2>RATE</h2>
            </tr>
            <tr>
              <td width="50%" align="right"><b>Per Hour</b>
              <td width="50%" align="left">
            <tr>
              <td width="50%" align="right"><b>Duration</b>
              <td width="50%" align="left">
            </tr>



            <tr>
              <td width="50%" align="right"><b>Start Time</b>
              <td width="50%" align="left">
            </tr>
            <tr>
              <td width="50%" align="right"><b>Expected End Time</b>
              <td width="50%" align="left">
            </tr>
            <tr>
              <td width="50%" align="right"><b>TOTAL PRICE</b>
              <td width="50%" align="left" style="background-color: #70db70">
            </tr>

          </table>
        </div>
       
        <div class="container">
        <button id="proceed" class="btn btn-lg btn-primary btn-block" type="button"  data-toggle="modal" data-target="#myModal">CONFIRM BOOKING</button></div>
        
        <br>
      </div>
    </div>
</div>


<!--------------------------->
<form method="post" action="homecustomer.jsp">
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          
        </div>
        
        <div class="modal-footer">
<button class='btn btn-lg btn-success btn-block' type='submit'>Booking Successful!! Thankyou!</button>


        </div>
      </div>    
    </div>
  </div>
</form>







    </main>
  </body>
</html>
