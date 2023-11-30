<%@ page import="com.api.web.model.Rent" language="java" contentType="text/html" %>
  <%@ page import="java.util.List" %>
    <!doctype html>
    <html lang="en">

    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

      <title>Welcome to Rent Database</title>
      <script src="https://kit.fontawesome.com/9d0c5215d1.js" crossorigin="anonymous"></script>
    </head>

    <body >
      <div class="container pt-5 d-flex justify-content-between">
      <a href="/home" class="">Back to Home</a>
      <h1 class="text-center ">DATABASE</h1>
      <a href="/SellingHouse" class="">Move to Sell Data</a>
    </div>
      <div class="container my-5">
        <table class="table table-hover table-bordered ">
          <thead class="thead-light">
            <tr>
              <th scope="col">ID</th>
              <th scope="col">User-Name</th>
              <th scope="col">Phone-Number</th>
              <th scope="col">Email-Id</th>
              <th scope="col">Price</th>
              <th scope="col">Address</th>
              <th scope="col">Edit</th>
              <th scope="col">Delete</th>
            </tr>
          </thead>
          <tbody>
            <% List<Rent> rentList = (List<Rent>) request.getAttribute("RentingHouse");
                if (rentList != null && !rentList.isEmpty()) {
                for (Rent rent : rentList) {
                %>
                <tr>
                  <td>
                    <%= rent.getId() %>
                  </td>
                  <td>
                    <%= rent.getUsername() %>
                  </td>
                  <td>
                    <%= rent.getPhone_number() %>
                  </td>
                  <td>
                    <%= rent.getEmail() %>
                  </td>
                  <td>
                    <%= rent.getPrice() %>
                  </td>
                  <td>
                    <%= rent.getAddress() %>
                  </td>
                  <td><a href="/edit/<%= rent.getId() %>"><i class="fas fa-pen-to-square"></i></a></td>
                  <td>
                     <a href="/Delete/ <%= rent.getId()%>"><i style="color: red;" class="fas fa-trash"></i></a>
                    </td>
                </tr>
                <% } } %>
              
              
          </tbody>
        </table>
      </div>
      <!-- //Editing with script .. Expression logic is not working here -->
    
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