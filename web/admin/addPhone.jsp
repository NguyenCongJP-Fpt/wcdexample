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
            <div class="row form-group">
                <div class="col col-md-3"><label class=" form-control-label">Phone ID:</label></div>
                <div class="col-12 col-md-6">
                    <input type="text" class="form-control" placeholder="Enter phone imei" name="id"
                           required>
                </div>
            </div>

            <div class="row form-group">
                <div class="col col-md-3"><label class=" form-control-label">Phone Name:</label></div>
                <div class="col-12 col-md-6">
                    <input type="text" class="form-control" id="phonename" placeholder="Enter phone name" name="name"
                           required>
                </div>
            </div>

            <div class="row form-group">
                <div class="col col-md-3"><label class=" form-control-label">Phone Brand:</label></div>
                <div class="col-12 col-md-6">
                    <select name="brand" class="form-control">
                        <option value="0">Please select brand</option>
                        <option value="1">Samsung</option>
                        <option value="2">Apple</option>
                        <option value="3">Sony</option>
                        <option value="3">LG</option>
                        <option value="3">OPPO</option>
                    </select>
                </div>
            </div>

            <div class="row form-group">
                <div class="col col-md-3"><label class=" form-control-label">Price:</label></div>
                <div class="col-12 col-md-6">
                    <input type="text" class="form-control" id="price" placeholder="Enter price" name="price" required>
                </div>
            </div>

            <div class="row form-group">
                <div class="col col-md-3"><label class=" form-control-label">Description:</label></div>
                <div class="col-12 col-md-6">
                    <input type="text" class="form-control" id="description" placeholder="Enter description"
                           name="description" required>
                </div>
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
