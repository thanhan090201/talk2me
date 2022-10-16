<%-- 
    Document   : register
    Created on : Oct 15, 2022, 11:05:38 PM
    Author     : tuan vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <form class="card-body cardbody-color p-lg-5" action="<c:url value="Create_Account.do"/>">

            <div class="mb-3">
                <input type="text" name="account" class="form-control"  
                       placeholder="Username" value="${ac.user_Name}">

            </div>

            <div class="mb-3">
                <input type="text" class="form-control" name="password" 
                       placeholder="Password" name="password" value="${pass}">

            </div>

            <div class="mb-3">
                <input type="text" class="form-control" name="nameCustomer" 
                       placeholder="Name" value="${ac.name}">

            </div>

            <div class="mb-3">
                <select name="gender">
                    <option value="false">Nữ</option>
                    <option value="true">Nam</option>
                </select>
            </div>

            <div class="mb-3">
                <input type="email" class="form-control" name="email"
                       placeholder="Email" name="password" value="${ac.email}">

            </div>

            <div class="mb-3">
                <input type="number" class="form-control" name="phone" 
                       placeholder="Phone" name="password" value="${ac.phoneNumber}">

            </div>           

            <div class="text-center">
                <button type="submit" name="action" class="btn-color px-5 mb-5 w-100" 
                        value="Create_Account">Create Account</button>

            </div>

            <i style="color: red">${result}</i>
        </div>
    </form>
</body>
</html>
