<%-- 
    Document   : bookingDoctor
    Created on : Oct 16, 2022, 2:55:02 AM
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
        <form action="<c:url value="/booking/createBooking.do"/>">
            <select name="doctorId">
       <c:forEach items="${doctor}" var="st">
           <option value="${st.user_Id}"> ${st.name}</option>
        </c:forEach>
            </select>
            <h2><select name="endtime">
                    <option value="1">60</option>
                    <option value="2">120</option>
                    <option value="3">180</option>
                </select></h2>
            <button name="action" value="createBooking">Đặt Lịch Ngay</button>
            </form>
    </body>
</html>
