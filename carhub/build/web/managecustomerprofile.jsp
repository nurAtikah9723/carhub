<%-- 
    Document   : register
    Created on : Mar 14, 2020, 9:20:21 AM
    Author     : Najihah Zanudin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!------------------- Script ------------------->
<%@include file="_head.jsp" %>
<!------------------- ------ ------------------->

<!-------------- ---------------- -------------->
<title> CH - Register </title>
</head>
<body>
<!----------------- Navigation ----------------->
<%@include file="_navbarcustomer2.jsp" %>
<!----------------- ---------- ----------------->

<!------------------- Coding ------------------->
<form action="5registersuccessful.php" class="container" method="POST" style="padding:30px";>
      <div class="row">
        <div class="col-md-12 order-md-1">
            <hr>
            <h4 class="mb-3" align="center">Update Profile</h4>
            <hr>
                    <div class="row">
                      <div class="col-md-6 mb-3">
                        <label for="firstName">First name</label>
                        <input type="text" class="form-control" name="firstName" placeholder="" value="" required>
                        <div class="invalid-feedback">
                          Valid first name is required.
                        </div>
                      </div>
                      <div class="col-md-6 mb-3">
                        <label for="lastName">Last name</label>
                        <input type="text" class="form-control" name="lastName" placeholder="" value="" required>
                        <div class="invalid-feedback">
                          Valid last name is required.
                        </div>
                      </div>
                    </div>
                    <div class="mb-3">
                      <label for="username">Username</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text">@</span>
                        </div>
                        <input type="text" class="form-control" name="userName" placeholder="Username" required>
                        <div class="invalid-feedback" style="width: 100%;">
                          Your username is required.
                        </div>
                      </div>
                    </div>

                    <div class="mb-3">
                        <label for="firstName">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="" value="" required>
                        <div class="invalid-feedback">
                          Password is required.
                        </div>
                      </div>


                    <div class="row">
                      <div class="col-md-3 mb-3">
                        <label for="firstName">IC Number</label>
                        <input type="text" class="form-control" name="ic1" placeholder="" value="" maxlength="6" required>
                        <div class="invalid-feedback">
                          Valid first name is required.
                        </div>
                      </div>
                      <div class="col-md-2 mb-3">
                        <label for="lastName"> </label>
                        <input type="text" class="form-control" name="ic2" placeholder="" value="" maxlength="2" required>
                        <div class="invalid-feedback">
                          Valid last name is required.
                        </div>
                      </div>
                      <div class="col-md-3 mb-3">
                        <label for="lastName"> </label>
                        <input type="text" class="form-control" name="ic3" placeholder="" value="" maxlength="4" required>
                        <div class="invalid-feedback">
                          Valid last name is required.
                        </div>
                      </div>
                    </div>

                    <div class="mb-3">
                      <label for="email">Email</label>
                      <input type="email" class="form-control" name="email" placeholder="you@example.com" required>
                      <div class="invalid-feedback">
                        Please enter a valid email address
                      </div>
                    </div>

                    <div class="mb-3">
                      <label for="address">Phone Number</label>
                      <input type="text" class="form-control" name="phone" placeholder="eg. 0123456789" required>
                      <div class="invalid-feedback">
                        Please enter your Phone Number
                      </div>
                    </div>



                    <div class="mb-3">
                      <label for="address">Gender</label>
                      <div class="radio">
                        <input value="0" name="gender" type="radio" id="male" onclick="changer()">
                        <label for="male">Male</label>
                      </div>
                      <div class="radio">
                        <input value="1" name="gender" type="radio" id="female" onclick="changer()">
                        <label for="female">Female</label>
                      </div>
                    </div>

                    <hr class="mb-4">
                    
                    <button class="btn btn-primary btn-lg btn-block" type="submit">UPDATE</button>
                    
                  </form>
                <p class="mt-5 mb-3 text-muted">&copy; 2017-2018 CarHub Company</p>
              </div>
          </div>


</form>

</body>
</html>










