<%@ page import="com.api.web.model.Rent" language="java" contentType="text/html" %>
<%@ page import="java.util.List" %>
<%@ page import="com.api.web.model.Sell" language="java" contentType="text/html" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    
    <div class="container p-5">
        <c:forEach var="Rentedit" items="${RentingHouse}">
            <form class="mr-auto py-5" method="post" action="/RentSave">
              <input type="hidden" name="id"  value="${Rentedit.id}">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="Username">UserName</label>
                        <input type="Name" class="form-control" name="Username" value="${Rentedit.username}" placeholder="User-Name">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="Phone_number">PhoneNumber</label>
                        <input type="text" class="form-control" name="Phone_number" value="${Rentedit.phone_number}" placeholder="Phone-Number">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="Email">Email-ID</label>
                        <input type="Email" class="form-control" id="inputEmail4" value="${Rentedit.email}" name="Email" placeholder="Email-Id">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="Price">Price</label>
                        <input type="text" class="form-control" name="Price" value="${Rentedit.price}" placeholder="Enter your price">
                    </div>
                </div>
                <div class="form-group">
                    <label for="Address">Address</label>
                    <input type="text" class="form-control" name="Address" value="${Rentedit.address}" placeholder="1234 Main St">
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </form>
        </c:forEach>
    </div>
  
    <!-- <h2>Select the field you want to update:</h2> -->

    <!-- <form id="updateForm" method="post" action="/editForm.jsp">
        <label for="fields">Select Field:</label>
        <select id="fields" name="fields" onchange="showForm()">
            <option value="" disabled selected>Select a field</option>
            <option value="username">Username</option>
            <option value="phone_number">Phone Number</option>
            <option value="address">Address</option>
            <option value="email">Email</option>
            <option value="prize">Prize</option>
        </select>

        <div id="usernameForm" style="display: none;">
            <label for="newUsername">New Username:</label>
            <input type="text" id="newUsername" name="newUsername">
        </div>

        <div id="phoneForm" style="display: none;">
            <label for="newPhoneNumber">New Phone Number:</label>
            <input type="text" id="newPhoneNumber" name="newPhoneNumber">
        </div>

        <div id="addressForm" style="display: none;">
            <label for="newAddress">New Address:</label>
            <input type="text" id="newAddress" name="newAddress">
        </div>

        <div id="emailForm" style="display: none;">
            <label for="newEmail">New Email:</label>
            <input type="text" id="newEmail" name="newEmail">
        </div>

        <div id="prizeForm" style="display: none;">
            <label for="newPrize">New Prize:</label>
            <input type="text" id="newPrize" name="newPrize">
        </div>

        <button type="submit">Update</button>
    </form> -->

    <!-- <script>
        function showForm() {
            var selectedField = document.getElementById('fields').value;

            // Hide all forms
            document.getElementById('usernameForm').style.display = 'none';
            document.getElementById('phoneForm').style.display = 'none';
            document.getElementById('addressForm').style.display = 'none';
            document.getElementById('emailForm').style.display = 'none';
            document.getElementById('prizeForm').style.display = 'none';

            // Show the selected form
            document.getElementById(selectedField + 'Form').style.display = 'block';
        }
    </script> -->

</body>
</html>
