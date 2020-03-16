<%-- 
    Document   : homeadmin
    Created on : Mar 14, 2020, 10:28:42 AM
    Author     : Najihah Zanudin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
 
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="images/mlogoo.png">
  <title>CH - Admin home
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
<%@include file="_navbaradmin.jsp" %>

<!--CODE-->
<div class="container">
  <div class="row justify-content-lg-start">
    <div class="col col-lg-4">
      <div class="card mt-4">
        <img class="card-img-top img-fluid" src="images/team1.png">
        <div class="card-body">
          <center><h1 class="card-title">ADMIN</h1><hr>
            <h6 class="card-title"><b>ADMIN ID</b> : </h6>
        </center></div>
        
      </div>
    </div>
    <div class="col col-lg-8">
      <div class="card card-outline-secondary my-4">
        <div class="card-header">
          Info
        </div>
        <div class="card-body">
          <table class="table table-bordered" align="center">
            <tr>
              <td width="25%" align="right"><b>Name</td>
              <td width="50%" align="left"></td>
            </tr>
            
            <tr>
              <td width="25%" align="right"><b>IC</td>
              <td width="50%" align="left"></td>
            </tr>
            <tr>
             <td width="25%" align="right"><b>Email</td>
             <td width="50%" align="left"></td>
            </tr>
            <tr>
              <td width="25%" align="right"><b>Phone No</td>
              <td width="50%" align="left"></td>
            </tr>
          </table>
          <a class="btn btn-lg btn-primary btn-block" href="admin_admin_edit.php">Edit</a>
        </div>
      </div>
    </div>
</div>

<script>
function myFunction() {
    alert("Booking Succesful!");
    location.replace("http://localhost/carhub/6service.php")
}
</script>

</body>











