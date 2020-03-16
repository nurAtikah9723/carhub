<%-- 
    Document   : carList
    Created on : Mar 14, 2020, 7:28:34 AM
    Author     : Najihah Zanudin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html lang="en">
<style type="text/css">
.filterDiv {
  display: none;
}

.show {
  display: block;
}

.imgcar
      {
  width:100%;
  height:100%;
}
</style>
<head>
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
    <main role="main">

      <section class="jumbotron text-center">
        <div class="container">
          <h1 class="jumbotron-heading">Available Car</h1>
         
        </div>
      </section>


<!---------------------->

      <div class="album py-5 bg-light">
        <div class="container">
          <div class="row">
              
              <%
        
        String driver = "com.mysql.jdbc.Driver";
        String dbName = "newcarhubdb";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";
        
        ArrayList vsList = new ArrayList();
        
        try
        {
            Class.forName(driver);
            Connection con=(Connection)DriverManager.getConnection(
            url,userName,password);
        
            //----------------------Vessel Schedule -----------------------//
            String sql = "SELECT * FROM car" ;
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();

            while(rs.next()){ %>
               
<!--//                String Picture = rs.getString ("Picture");
//                String Carbrand = rs.getString("Carbrand");
//                String Carname = rs.getString("Carname");
//                String Cartrans = rs.getString("Cartrans");
//                int Carseat = Integer.parseInt(rs.getString("Carseat"));
//                String Cartype = rs.getString("Cartype");
//                int rate = Integer.parseInt(rs.getString("rate"));-->
                
                <div class='col-md-4'>
                    <div class='card mb-4 shadow-sm'>
                        <img class='imgcar' src='images/<%=rs.getString("Picture")%>'>
                        <div class='card-body'>
                            <h3 class='card-text'><%=rs.getString("Carname")%></h3><hr>

                            <p class='card-text'><i class='fas fa-chair'></i> <%=rs.getString("Carname")%> Seat</p>

                            <p class='card-text'><i class='fas fa-car-side'></i><%=rs.getString("Carname")%> </p>

                            <p class='card-text'><i class='fas fa-money-bill'></i> RM <%=rs.getString("Carname")%>/Hour</p>

                            <div class='d-flex justify-content-between align-items-center'>
                                <div class='btn-group'>
                                    <a class='btn btn-warning' href='login.jsp'><b>RENT NOW!</b></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
      <%      }
        }
       
        catch (Exception e){
        e.printStackTrace();
        }
%>

         
          </div>
        </div>
      </div>

    </main>


  </body>
</html>
