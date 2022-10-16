
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                height: 50px;
            }
            /* Footer ends */
        </style>
    </head>
    <body>
        <header>
            <div class="container">
                <div class="header__content d-flex justify-content-between">
                    <div class="header__left d-flex">
                        <div class="logo">
                            <img class="img-fluid" src="<c:url value="/img/logo.jpg"/>" />
                        </div>
                        <div class="logo__content">
                            <h6>Talk2Me</h6>
                            <p>We live in the dark, to serve the light</p>
                        </div>
                    </div>
                    <div class="header__right">
                        <ul class="d-flex">
                            <li><a href="<c:url value="/home/index.do"/>">Trang chủ</a></li>
                            <li><a href="<c:url value="/booking/booking.do"/>">Đặt lịch hẹn</a></li>
                            <li><a href="<c:url value="/user/login.do"/>">Đăng nhập</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>

        <div>
            <jsp:include page="/WEB-INF/view/${controller}/${action}.jsp"/>
        </div>

        <footer>
            <div class="container">
                <div class="footer__content text-center">
                    <a href=""><i class="fa-brands fa-facebook"></i></a>
                    <p>Team urf mãi đỉnh</p>
                </div>
            </div>
        </footer>
    </body>
</html>
