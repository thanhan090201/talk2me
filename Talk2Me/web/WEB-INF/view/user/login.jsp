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
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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

            body {
                background-color: #411663;
            }
            
            .login {
                margin-top: 50px;
            }

            .login img {
                border-radius: 50%;
                width: 100%;
                margin-top: 50px;
            }

            .login input {
                width: 100%;
                margin-top: 40px;
                height: 40px;
            }

            .login button {
                background-color: #cc6ce7;
                border: none;
                width: 100%;
                margin-top: 30px;
                height: 40px;
            }
            
            .login .register {
                padding-top: 30px;
                padding-bottom: 30px;
            }
            /* Footer starts */
            footer {
                background-color: #38184b;
                color: white;
            }
            /* Footer ends */


        </style>
    </head>
    <body>
        <div class="login">
            <div class="container">
                <div class="login__content row">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-4">
                        <img src="<c:url value="/img/logo.jpg"/>"><br>
                        <form action="<c:url value="loginAccount.do"/>">
                            <input type="text" name="account" id="Username" placeholder="Username" value="${ac}"><br>
                            <input type="password" name="password" id="password" placeholder="Password" value="${pa}">
                            <button value="loginAccount">Đăng nhập</button>
                            <div class="register text-center">
                                <a class="text-center" href="<c:url value="/user/register.do"/>">Register</a>
                            </div>
                            
                            <i class="text-center" style="color: red; font-size: 20px">${result}</i>
                        </form>
                    </div>
                    <div class="col-lg-4"></div>
                </div>
            </div>
        </div>
<!--        <form class="card-body cardbody-color p-lg-5" action="<c:url value="loginAccount.do"/>">
            <input type="text" name="account" class="form-control" id="Username" 
                   placeholder="Username" value="${ac}">
            <input type="password" class="form-control" name="password" 
                   placeholder="Password" name="password" value="${pa}">
            <div class="text-center"><button type="submit" name="action" class="btn-color px-5 mb-5 w-100" value="loginAccount">Login</button></div>
            <div><a href="<c:url value="/user/register.do"/>">Register</a></div>
            <i style="color: red; font-size: 20px">${result}</i>
        </form>-->
    </body>
</html>
