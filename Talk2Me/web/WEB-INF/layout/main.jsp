
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Talk2Me</h1>
        <a href="<c:url value="/home/index.do"/>">Trang Chủ</a>
        <a href="<c:url value="/home/index.do"/>">Đặt Lịch Hẹn</a>
        <a href="<c:url value="/home/index.do"/>">Đăng Nhập</a>
        
        <div>
           <jsp:include page="/WEB-INF/view/${controller}/${action}.jsp"/>
        </div>
        <!--footer-->
                <div>
                    <hr/>
                    Công ty TNHH An Vũ Trung Công<br>
                    Điện thoại:0912345678<br>
                    Gmail: chaydeadlinetronghe.com<br>
                    Copyrights &copy; by PRJ Class.All Rights Reserved.
                </div>
    </body>
</html>
