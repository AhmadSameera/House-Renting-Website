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
  

</body>
</html>
