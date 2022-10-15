<%-- 
    Document   : doctorView
    Created on : Oct 16, 2022, 4:41:11 AM
    Author     : tuan vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:forEach items="${doctor}" var="st">
            <h1>${st.avarta}</h1>
            <h1>${st.nameDoctor}</h1>
            <a href="<c:url value="/doctor/doctorDetail.do"/>">View Detail Doctor</a>
            <br/>
        </c:forEach>
    </body>
</html>
