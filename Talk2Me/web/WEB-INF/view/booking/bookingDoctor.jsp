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
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            /* Date start */
            .date .container {
                z-index: 2;
            }

            .date .bg__img {
                z-index: 1;
            }

            .date .bg__img img {
                width: 100%;
                height: 100vh;
                position: absolute;
                z-index: -1;
            }

            .date h1 {
                color: #38184b;
            }

            .date .container {
                padding-top: 250px;
            }
            .date__content {
                height: 100px;
                background-color: #e4e1dc;
            }

            .date__content input, .date__content select, .date__content button {
                height: 50px;
            }

            .date__content .doc {
                margin-right: 30px;
            }

            .date__content input {
                width: 200px;
                border-color: #38184b;
                margin-right: 30px;
            }

            .date__content select {
                width: 300px;
                border-color: #38184b;
            }

            .date__content button {
                width: 150px;
                background-color: #38184b;
                color: white;
                border: none;
                margin-left: 30px;
                border-radius: 5px;
            }

            .form {
                padding-top: 25px;
            }
            /* Date ends */
            
            footer {
                display: none;
            }
        </style>
    </head>
    <body>
        <div class="date">
            <div class="bg__img">
                <img src="<c:url value="/img/bg1.png"/>" alt="">
            </div>
            <div class="container">
                <h1 class="text-center">Vui lòng đặt lịch</h1>
                <div class="date__content">
                    <form action="<c:url value="/booking/createBooking.do"/>" class="form d-flex justify-content-center">
                        <select name="doctorId" id="" class="doc">
                            <c:forEach items="${doctor}" var="st">
                                <option value="${st.doctorId}"> ${st.nameDoctor}</option>
                            </c:forEach>
                        </select>
                        <input type="date" id="basicDate" placeholder="Please select Date Time">
                        <select name="" id="">
                            <option value="0">Chọn số tiếng bạn muốn đặt</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                        <button>Đặt lịch ngay</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
