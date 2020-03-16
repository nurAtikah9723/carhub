<%-- 
    Document   : login
    Created on : Mar 14, 2020, 3:34:03 AM
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
<form action="custLogin" class="form-signin" method="POST">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1><hr>
      <input type="text" name="username" class="form-control" placeholder="Username" required autofocus >
      <br>
      <input type="password" name="password" class="form-control" placeholder="Password" ><br>
      <button class="btn btn-lg btn-primary btn-block" type="submit"  name="submit">Sign in</button>
      <br>
     
  <div class="col-12">
    <hr>
     <p class="lead"> Dont have an account? <a href="register.jsp">Register</a> Here!</p>
    <hr>
  </div>
      

      <p class="mt-5 mb-3 text-muted">&copy; 2020 CarHub Company</p>
    </form>


</body>
</html>













