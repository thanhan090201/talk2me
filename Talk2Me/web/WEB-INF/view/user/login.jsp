<%-- 
    Document   : login
    Created on : Oct 15, 2022, 10:13:29 PM
    Author     : tuan vu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form class="card-body cardbody-color p-lg-5" action="<c:url value="loginAccount.do"/>">
            <input type="text" name="account" class="form-control" id="Username" 
                   placeholder="Username" value="${ac}">
            <input type="password" class="form-control" name="password" 
                   placeholder="Password" name="password" value="${pa}">
            <div class="text-center"><button type="submit" name="action" class="btn-color px-5 mb-5 w-100" value="loginAccount">Login</button></div>
            <div><a href="<c:url value="/user/register.do"/>">Register</a></div>
            <i style="color: red; font-size: 20px">${result}</i>
        </form>
    </body>
</html>
