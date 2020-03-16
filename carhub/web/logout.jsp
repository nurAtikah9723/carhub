<%-- 
    Document   : logout
    Created on : Mar 14, 2020, 10:19:19 AM
    Author     : Najihah Zanudin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    session.invalidate();
    response.sendRedirect("index.jsp"); 
%>
