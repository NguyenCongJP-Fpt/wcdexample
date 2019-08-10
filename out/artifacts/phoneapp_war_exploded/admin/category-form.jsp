<%--
  Created by IntelliJ IDEA.
  User: NguyenCongJP
  Date: 8/11/2019
  Time: 12:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Phone Catagory</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h2>Add Phone Catagory</h2>
    <div class="col-ml-9">
        <form action="/category/add" method="post" class="validated">

            <div class="form-group">
                <label for="brandname">Brand Name:</label>
                <input type="text" class="form-control" id="brandname" placeholder="Enter brand name" name="name"
                       required>
            </div>

            <div class="form-group">
                <label for="description">Description:</label>
                <input type="text" class="form-control" id="description" placeholder="Enter description"
                       name="description" required>
            </div>

<%--            <div class="form-group form-check">--%>
<%--                <label class="form-check-label">--%>
<%--                    <input class="form-check-input" type="checkbox" name="remember" required> I agree on blabla.--%>
<%--                </label>--%>
<%--            </div>--%>
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-warning">Reset</button>
        </form>
    </div>

</div>
</body>
</html>
