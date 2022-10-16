<%-- 
    Document   : index.jsp
    Created on : Oct 15, 2022, 9:01:14 PM
    Author     : tuan vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            
            /* Carousel starts */
            .carousel {
                background-color: #411663;
            }

            .carousel img {
                height: 500px;
                width: 100%;
                filter: grayscale(30%);
                margin-top: 50px;
            }

            .carousel__content {
                color: white;
                padding-bottom: 50px;
            }

            .carousel__content h1 {
                font-size: 70px;
            }

            .carousel__content p {
                margin-top: 20px;
                padding: 0px 100px 0 100px;
            }
            /* Carousel ends */

            /* Advertise starts */
            .advertise {
                /* background-color: #38184b; */
                /* background-image: url(./img/advertise.png); */
                color: white;
            }

            .advertise .container-fluid {
                padding: 0;
            }

            .advertise .carousel-inner .carousel__item img{
                height: 500px;
                width: 100%;
            }

            .carousel-caption {
                padding-bottom: 150px;
                color: black;
            }

            .advertise__item {
                background-color: #38184b;
                color: white;
                padding-top: 50px;
                font-size: 25px;
            }

            .advertise__item p {
                margin-top: 30px;
            }

            .advertise__item img{
                width: 300px;
                height: 200px;
            }
            /* Advertise ends */

            /* Contact starts */
            .contact {
                margin-top: 0;
                padding-top: 50px;
                background-color: #38184b;
                color: white;
            }

            .contact__right {
                width: 400px;
            }

            .contact__right .mess {
                height: 100px;
                padding-bottom: 70px;
            }

            .contact button {
                width: 400px;
                border: none;
                text-align: center;
                height: 40px;
                line-height: 20px;
                font-weight: bold;
            }
            /* Contact ends */

            /* Footer starts */
            footer {
                background-color: #38184b;
                color: white;
            }
            /* Footer ends */

            /* Apointment starts */
            .nav {
                padding-left: 450px;
                margin-top: 100px;
            }

            .apointment .tab-content {
                margin-top: 100px;
            }
            /* Apointment ends */


        </style>
    </head>

    <body>
        
        <div class="carousel animate__animated animate__fadeInUp">
            <div class="container">
                <div class="carousel__img">
                    <img class="img-fluid" src="<c:url value="/img/carousel.png"/>">
                </div>
                <div class="carousel__content text-center">
                    <h1>Welcomes to Talk2me</h1>
                    <p>Share with me</p>
                    <p>Talk2me của chúng tôi được tạo ra như một cộng đồng dành cho những cá nhân đang trải qua những khó
                        khăn
                        về
                        tâm lý. Chúng tôi tin rằng đây là một không gian an toàn, nơi mọi người có thể chia sẻ và lắng nghe
                        người
                        khác, tạo ra những tín hiệu tích cực trong cuộc sống. Hãy liên hệ với chúng tôi ngay hôm nay.</p>
                </div>
            </div>
        </div>

        <div class="advertise">
            <div class="container-fluid">
                <div id="demo" class="carousel slide" data-ride="carousel">
                    <ul class="carousel-indicators">
                        <li data-target="#demo" data-slide-to="0" class="active"></li>
                        <li data-target="#demo" data-slide-to="1"></li>
                        <li data-target="#demo" data-slide-to="2"></li>
                    </ul>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="<c:url value="/img/advertise.png"/>" alt="Los Angeles" width="1100" height="500">
                            <div class="carousel-caption">
                                <h1>Bác sĩ/Chuyên viên tận tâm</h1>
                                <p>Là một thành viên góp phần tạo nên cộng đồng của Talk2me. Với đội ngũ bác sĩ và chuyên
                                    viên tận
                                    tâm,
                                    chúng
                                    tôi sẽ giúp những người bệnh nhân có trải nghiệm tốt nhất khi sử dụng dịch vụ.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="<c:url value="/img/advertise.png"/>" alt="Chicago" width="1100" height="500">
                            <div class="carousel-caption">
                                <h1>Bác sĩ/Chuyên viên tận tâm</h1>
                                <p>Là một thành viên góp phần tạo nên cộng đồng của Talk2me. Với đội ngũ bác sĩ và chuyên
                                    viên tận
                                    tâm,
                                    chúng
                                    tôi sẽ giúp những người bệnh nhân có trải nghiệm tốt nhất khi sử dụng dịch vụ.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="<c:url value="/img/advertise.png"/>" alt="New York" width="1100" height="500">
                            <div class="carousel-caption">
                                <h1>Bác sĩ/Chuyên viên tận tâm</h1>
                                <p>Là một thành viên góp phần tạo nên cộng đồng của Talk2me. Với đội ngũ bác sĩ và chuyên
                                    viên tận
                                    tâm,
                                    chúng
                                    tôi sẽ giúp những người bệnh nhân có trải nghiệm tốt nhất khi sử dụng dịch vụ.</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#demo" data-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </a>
                    <a class="carousel-control-next" href="#demo" data-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </a>
                </div>
            </div>
        </div>

        <div class="advertise__item">
            <div class="container">
                <div class="advertise__content">
                    <div class="advertise__list d-flex justify-content-between">
                        <div class="advertise__item text-center">
                            <img class="img-fluid" src="<c:url value="/img/ad1.png"/>">
                            <p>Giao lưu học hỏi</p>
                        </div>
                        <div class="advertise__item text-center">
                            <img class="img-fluid" src="<c:url value="/img/2ad.jpg"/>">
                            <p>Phát triển cộng đồng</p>
                        </div>
                        <div class="advertise__item text-center">
                            <img class="img-fluid" src="<c:url value="/img/3ad.jpg"/>">
                            <p>Kết nối yêu thương</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="contact">
            <div class="container">
                <div class="contact__content d-flex justify-content-between">
                    <div class="contact__left">
                        <h1>Contact Us</h1>
                        <p>Số 49 Hai Bà Trưng, quận Hoàn Kiếm, Hà Nội, 100000</p>
                        <p>nhungdcse151533@fpt.edu.vn</p>
                        <p>024 3456 7890</p>
                    </div>
                    <div class="contact__right">
                        <div class="form-group">
                            <label for="">Tên *</label>
                            <input type="text" class="form-control" name="" id="" placeholder="Nhập tên của bạn">
                        </div>
                        <div class="form-group">
                            <label for="">Email *</label>
                            <input type="text" class="form-control" name="" id="" placeholder="Nhập tên của bạn">
                        </div>
                        <div class="form-group">
                            <label for="">Điện thoại *</label>
                            <input type="text" class="form-control" name="" id="" placeholder="Nhập tên của bạn">
                        </div>
                        <div class="form-group">
                            <label for="">Địa chỉ *</label>
                            <input type="text" class="form-control" name="" id="" placeholder="Nhập tên của bạn">
                        </div>
                        <div class="form-group">
                            <label for="">Tin nhắn *</label>
                            <input type="text" class="form-control mess" name="" id="" placeholder="Nhập tên của bạn">
                        </div>
                        <button>Gửi</button>
                    </div>

                </div>
            </div>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
        <!-- wow animate -->
        <script src="js/wow.min.js"></script>
        <script>
            new WOW().init();
        </script>
        <!-- my js -->
        <script src="./index.js"></script>
    </body>

</html>


