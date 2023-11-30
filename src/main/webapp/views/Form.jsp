<%@ page import="com.api.web.model.Sell" language="java" contentType="text/html" %>
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

      <title>Form</title>
      <style>
        .body-color {
          background-color: rgb(194, 243, 243);
        }

        /* Add some spacing and styling to the form */
        .form-row {
          margin-bottom: 20px;
        }

        .form-group {
          margin-bottom: 20px;
        }

        /* Style the labels */
        .text-success {
          font-weight: bold;
          color: #007bff;
          /* Change label color to a nice blue */


        }

        /* Style the input fields */
        .form-control {
          width: 100%;
          padding: 12px;
          border: 2px solid #007bff;
          /* Increase border thickness and change color */
          border-radius: 6px;
          box-sizing: border-box;
          margin-bottom: 10px;
        }

        /* Style the submit button */
        .btn-primary {
          padding: 12px 24px;
          background-color: #2855a7;
          /* Change button color to a nice green */
          color: #fff;
          border: none;
          border-radius: 6px;
          cursor: pointer;
          font-size: 16px;
        }

        /* Hover effect on the submit button */
        .btn-primary:hover {
          background-color: #218838;
          /* Darker green on hover */
        }


        /* Add some spacing to the button */
        .btn-primary {
          margin-top: 15px;
        }
      </style>
    </head>

    <body class="body-color">

      <div class="container p-5">
        <h1>Form</h1>
        <form class="mr-auto py-5" method="post" action="/save" enctype="multipart/form-data">
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="UserName " class="text-dark">UserName</label>
              <input type="Name" required class="form-control" name="UserName" id="" placeholder="User-Name">
            </div>

            <div class="form-group col-md-6">
              <label for="Phone " class="text-dark">PhoneNumber</label>
              <input type="text" required class="form-control" name="Phone" placeholder="Phone-Number">
            </div>

            <div class="form-group col-md-6">
              <label for="Email " class="text-dark"> Email-ID</label>
              <input type="Email" required class="form-control" id="inputEmail4" name="Email" placeholder="Email-Id">
            </div>
            <div class="form-group col-md-6">
              <label for="Price " class="text-dark">Price</label>
              <input type="text" required class="form-control" id="" name="Price" placeholder="Enter your price">
            </div>

          </div>
          <div class="form-group">
            <label for="Address " class="text-dark">Address</label>
            <input type="text" required class="form-control" id="inputAddress" name="Address" placeholder="Address">
          </div>
          <div class="form-group">
            <label for="exampleFormControlFile1">Upload your image</label>
            <input type="file" class="form-control-file" id="exampleFormControlFile1" name="image">
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-primary">Submit</button>

          </div>
        </form>

      </div>


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