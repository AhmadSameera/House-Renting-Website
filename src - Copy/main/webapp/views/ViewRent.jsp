<%@ page import="com.api.web.model.Rent" language="java" contentType="text/html" %>
    <%@ page import="java.util.List" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

            <!-- Bootstrap CSS -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                crossorigin="anonymous">
                <script src="https:kit.fontawesome.com/c4254e24a8.js" crossorigin="anonymous"></script>
            <title>Rent Listing</title>
            <style>
                /* Add your custom styles here if needed */
                /* Custom styles for the container */

            </style>
        </head>

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
                                        <a class="nav-link" href="properties">Properties</a>
                                    </li>
                                </ul>
                                <div>
                                    <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Register
                                       </button> 
                                       <div class="dropdown-menu">
                                         <a class="dropdown-item" href="RentForm">Rent Form</a>
                                         <a class="dropdown-item" href="Form" >Form</a>
                                       </div>
                                 </div>
                                
                                 <div>
                                 <a class="nav-link  text-info " href="logout">Logout</a>
                                </div>
                            </div>
                
                        </nav>
                    </div>
                </div>


            <div class="card mb-3">
                
                    <!-- jsp code for sellinghouse -->
                    <% List<Rent> rentList = (List<Rent>) request.getAttribute("ViewRent");
                            if (rentList != null && !rentList.isEmpty()) {
                            for (Rent rent : rentList) {
                            %>
                    <div class="container-fluid bg-white  rounded ">
                        <h1 class="text-dark text-center">Renting House Details
                            <!-- <a style="align-items: end; margin-left: 50%;" href="/Delete/ <%= rent.getId()%>">
                                <i style="color: red;" class="fas fa-trash"></i>
                            </a> -->
                        </h1>
                        <div class="form-row justify-content-center">
                            <div class="form-group col-md-3">
                                <label for="UserName" class="text-success">UserName</label>
                                <input type="Name" required class="form-control" readonly name="UserName" id=""
                                    value="<%= rent.getUsername() %>" placeholder="User-Name">
                            </div>
                            <div class="form-group col-md-3">
                                <label for="Phone" class="text-success">PhoneNumber</label>
                                <input type="text" required class="form-control" readonly name="Phone"
                                    value="<%= rent.getPhone_number() %>" placeholder="Phone-Number">
                            </div>
                            <div class="form-group col-md-3">
                                <label for="Email" class="text-success">Email-ID</label>
                                <input type="Email" required class="form-control" readonly id="inputEmail4" name="Email"
                                    value="<%= rent.getEmail() %>" placeholder="Email-Id">
                            </div>
                        </div>
                        <div class="form-row justify-content-center">
                            <div class="form-group col-md-3">
                                <label for="Price" class="text-success">Price</label>
                                <input type="text" required class="form-control" readonly id="" name="Price"
                                    value="<%= rent.getPrice() %>" placeholder="Enter your price">
                            </div>
                            <div class="form-group col-md-3">
                                <label for="Address" class="text-success">Address</label>
                                <input type="text" required class="form-control" readonly id="inputAddress" name="Address"
                                value="<%= rent.getAddress() %>" placeholder="1234 Main St">
                            </div>
                        </div>
                       
                    </div>
                    <div class=" rounded mx-auto d-block">
                        <img  height="380px" width="450px" src="data:image/*;base64,<%= rent.getImageBase64() %>" alt="House Image">
                    </div>
                    <hr class="my-4">
                    <% } } %>
                </div>
            </div>

        </div>

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