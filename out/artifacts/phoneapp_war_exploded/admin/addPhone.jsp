<%--
  Created by IntelliJ IDEA.
  User: NguyenCongJP
  Date: 8/10/2019
  Time: 7:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Phone Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Add Phone</h2>
    <div class="col-ml-9">
        <form action="/phone/add" method="post" class="validated">
            <div class="form-group">
                <label for="uname">Phone ID:</label>
                <input type="text" class="form-control" id="uname" placeholder="Enter phone imei" name="id" required>
            </div>

            <div class="form-group">
                <label for="phonename">Phone Name:</label>
                <input type="text" class="form-control" id="phonename" placeholder="Enter phone name" name="name" required>
            </div>

            <div class="form-group">
                <label for="brand">Phone Brand:</label>
                <input type="text" class="form-control" id="brand" placeholder="Enter brand" name="brand" required>
            </div>

            <div class="form-group">
                <label for="price">Price:</label>
                <input type="text" class="form-control" id="price" placeholder="Enter price" name="price" required>
            </div>

            <div class="form-group">
                <label for="description">Description:</label>
                <input type="text" class="form-control" id="description" placeholder="Enter description" name="description" required>
            </div>

            <div class="form-group form-check">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" name="remember" required> I agree on blabla.
                </label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-warning">Reset</button>
        </form>
    </div>

</div>
</body>
</html>
