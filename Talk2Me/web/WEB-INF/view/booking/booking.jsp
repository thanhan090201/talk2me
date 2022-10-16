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
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <!-- font awsome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
              integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- Animate -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <style>
            * {
                box-sizing: border-box;
                padding: 0;
                margin: 0;
            }

            /* Header starts */
            header {
                background-color: #38184b;
                height: 120px;
            }

            header img {
                height: 80px;
                width: 80px;
            }

            header .header__left {
                margin-top: 20px;
            }

            header .logo__content {
                padding-top: 15px;
                padding-left: 10px;
                color: white;
            }

            header ul li {
                list-style: none;
            }

            header .header__right a {
                color: white;
                padding-right: 10px;
                line-height: 100px;
            }

            header .header__right a:hover {
                text-decoration: none;
            }
            /* Header ends */

            /* Footer starts */
            footer {
                background-color: #38184b;
                color: white;
            }
            /* Footer ends */
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
            <c:forEach items="${list}" var="st">
            <div class="col-lg-6">
                <input type="hidden" name="scheduleId" value="${st.schedule_Id}"/>
                <input type="hidden" name="price" value="${st.price}"/>
                <h1>${st.name}</h1>
                <h2>${st.title}</h2>
                <h3>${st.price}</h3>
                <h3><a href="<c:url value="/booking/bookingDoctor.do"/>">Đặt Lịch</a></h3>
                <br/>
            </div>

        </c:forEach>
        </div>
        </div>
        
        
    </body>
</html>
