<%-- 
    Document   : booking
    Created on : Oct 16, 2022, 1:54:46 AM
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
        
        <c:forEach items="${list}" var="st">
            <input type="hidden" name="scheduleId" value="${st.schedule_Id}"/>
            <input type="hidden" name="price" value="${st.price}"/>
            <h1>${st.name}</h1>
            <h2>${st.title}</h2>
            <h3>${st.price}</h3>
            
            <h3><a href="<c:url value="/booking/bookingDoctor.do"/>">Đặt Lịch</a></h3>
            <br/>
        </c:forEach>
    </body>
</html>
