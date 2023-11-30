<%@ page import="com.api.web.model.Rent" language="java" contentType="text/html" %>
    <%@ page import="java.util.List" %>
        <!DOCTYPE html>
        <html lang="en" xmlns:th="http://www.thymeleaf.org">

        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                inntegrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                crossorigin="anonymous">
            <script src="https:kit.fontawesome.com/c4254e24a8.js" crossorigin="anonymous"></script>
            <title>Sell Listing</title>

        </head>
        <style>
            .list-container {
                margin-top: 10px;
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }

            .left-col {
                flex-basis: 70%;

            }

            .right-col {
                flex-basis: 70%;
                text-align: right;

            }

            .left-col h1 {
                color: #333;
                font-weight: 600;
                margin-bottom: 30px;
            }

            .house {
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                padding: 20px 0;
                border-top: 1px solid;
                border-top: #ccc;
            }

            .house-img {
                flex-basis: 40%;
            }

            .house-info {
                flex-basis: 58%;
                color: #555
            }

            .house-img img {
                width: 100%;
                border-radius: 12px;
            }

            .house-info i {
                color: #d12a38;
                font-size: 10px;
                margin: 10px 1px;
            }

            .house-price {
                text-align: right;
            }

            .house-price h4 {
                font-size: 20px;
            }

            .house-price span {
                font-size: 16px;
                font-weight: 500;
            }

            .house-price i {
                font-size: 30px;
                color: red;
            }

            .sidebar {
                border: 1px solid #999;
                padding: 20px 30px;
                margin-top: 30px;
            }
        </style>


        <body class="bg-light">
            <div class="container-fluid col-md-12 d-flex">
                <div class="media col-md-1">
                    <img class="mt-2 border img-fluid" src="/images/logo.png" alt="Generic placeholder image">
                </div>

                <div class="container-fluid mt-4 ">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse bordercol-md-12 ml-2" id="navbarSupportedContent">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item active ml-4">
                                    <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item active ml-4">
                                    <a class="nav-link" aria-disabled="true" href="#about">About <span
                                            class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item active ml-4">
                                    <a class="nav-link" aria-disabled="true" href="ViewSell">Sell</a>
                                </li>
                                <li class="nav-item active ml-4">
                                    <a class="nav-link" href="ViewRent">Rent</a>
                                </li>
                                <li class="nav-item active ml-4">
                                    <a class="nav-link" href="#properties">Properties</a>
                                </li>
                            </ul>
                            <a href="#">Register</a>
                            <i href="fas fa-bars" onclick="togglebtn()"></i>
                            <div>
                                <a class="nav-link  text-info " href="logout">Logout</a>
                            </div>
                        </div>

                    </nav>
                </div>
            </div>
            <div class="container">
                <img th:src="'data:image/*;base64,' + ${getImageBase64}" alt="Your Image">
                <div class="list-container">
                    <div class="left-col">
                        <p>200+ Options</p>
                        <h1>Recommended Places In India </h1>
                        <hr>
                        <div class="house">

                            <div class="house-img">
                                <img src="images/img1.jpg">
                            </div>
                            <div class="house-info">
                                <p>Private villa</p>
                                <h3>Delux Queen Room with Street View</h3>
                                <p>1 Bedroom / 1 Bathroom / Wifi / Kitchen</p>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                                <i class="far fa-star"></i>
                                <div class="house-price">
                                    <p>2 Guest</p>
                                    <h4>Rs 500 <span> / day</span></h4>
                                    <i class="fas fa-trash"></i>
                                </div>
                            </div>
                            <hr>
                        </div>
                            <div class="house">
                                <div class="house-img">
                                    <img src="images/img2.jpg">
                                </div>
                                <div class="house-info">
                                    <p>Private villa</p>
                                    <h3>Delux Queen Room with Street View</h3>
                                    <p>1 Bedroom / 1 Bathroom / Wifi / Kitchen</p>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                    <i class="far fa-star"></i>
                                    <div class="house-price">
                                        <p>2 Guest</p>
                                        <h4>Rs 500 <span> / day</span></h4>
                                        <i class="fas fa-trash"></i>

                                    </div>
                                </div>

                            </div>
                            <hr>
                            <div class="house">
                                <div class="house-img">
                                    <img src="images/img3.jpg">
                                </div>
                                <div class="house-info">
                                    <p>Private villa</p>
                                    <h3>Delux Queen Room with Street View</h3>
                                    <p>1 Bedroom / 1 Bathroom / Wifi / Kitchen</p>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                    <i class="far fa-star"></i>
                                    <div class="house-price">
                                        <p>2 Guest</p>
                                        <h4>Rs 500 <span> / day</span></h4>
                                        <i class="fas fa-trash"></i>

                                    </div>
                                </div>

                            </div>
                            <hr>
                            <div class="house">
                                <div class="house-img">
                                    <img src="images/img4.jpg">
                                </div>
                                <div class="house-info">
                                    <p>Private villa</p>
                                    <h3>Delux Queen Room with Street View</h3>
                                    <p>1 Bedroom / 1 Bathroom / Wifi / Kitchen</p>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                    <i class="far fa-star"></i>
                                    <div class="house-price">
                                        <p>2 Guest</p>
                                        <h4>Rs 500 <span> / day</span></h4>
                                        <i class="fas fa-trash"></i>
                                    </div>
                                </div>

                            </div>
                            <hr>
                        </div>

                    </div>

                </div>


                <div class="container-fluid d-flex ">
                    <div class="container ml-3  d-flex">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link " href="AdminView">Admin View</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Features</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Prices</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " href="#">Deals</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " href="#">Our Service</a>
                            </li>
                        </ul>

                    </div>
                    <form class="container-fluid  border align-items-center" method="post" action="/send">
                        <p class="card-text ">
                            <large class="text-muted">Reviews</small>
                        </p>
                        <div class="form-group ml-auto">
                            <label for="exampleInputEmail1">Email Address</label>
                            <input type="email" class="form-control col-md-8" id="exampleInputEmail1" name="email"
                                aria-describedby="emailHelp" placeholder="Enter email">
                            <small id="emailHelp" class="form-text text-muted">Your data is secured !!</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Feedback</label>
                            <input type="text" class="form-control col-md-8" name="review" id="exampleInputPassword1"
                                placeholder="Message:">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>

                    </form>

                </div>
                <!-- social-media starts..  -->

                <div class="container-fluid ">
                    <div>Follow us on</div>
                    <i class="fa-brands fa-youtube fa-2xl ml-4 " style="color: #e90101;"></i>
                    <i class="fa-brands fa-facebook fa-2xl ml-4" style="color: #005eff;"></i>
                    <i class="fa-brands fa-twitter fa-2xl ml-4" style="color: #005cfa;"></i>
                    <i class="fa-brands fa-instagram fa-2xl ml-4" style="color: #ea2e41;"></i>
                </div>

                <hr style="border: 1px solid rgb(195, 208, 221);">

                <script>
                    var navBar = document.getElementById("navBar");
                    function togglebtn() {
                        navBar.classList.toggle("hidemenu");
                    }
                </script>
                <!-- Bootstrap JS and dependencies -->
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                    crossorigin="anonymous"></script>
        </body>

        </html>