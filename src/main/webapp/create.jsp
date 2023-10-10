<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <title>Title</title>
</head>
<body>
<form method="post" class="needs-validation" novalidate>
    <div class="form-row">
        <div class="col-md-6 mb-3">
            <label>Name:</label>
            <input type="text" class="form-control" name="name">
        </div>
        <div class="col-md-6 mb-3">
            <label>Email:</label>
            <input type="text" class="form-control" name="email">
        </div>
    </div>
    <div class="form-row">
        <div class="col-md-6 mb-3">
            <label>Address:</label>
            <input type="text" class="form-control" name="address">
        </div>
        <div class="col-md-6 mb-3">
            <label>Phone:</label>
            <input type="number" class="form-control" name="phone">
        </div>
    </div>
    <div class="form-row">
        <div class="col-md-6 mb-3">
            <label>Salary:</label>
            <input type="number" class="form-control" name="salary">
        </div>
        <div class="col-md-6 mb-3">
            <label>Department</label>
            <select class="custom-select" name="idD">
                <c:forEach items="${departments}" var="d">
                    <option value="${d.id}">${d.name}</option>
                </c:forEach>
            </select>
        </div>
    </div>
    <button class="btn btn-primary" type="submit">ADD</button>
</form>
</body>
</html>
