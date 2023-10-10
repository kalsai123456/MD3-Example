<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
<html>
<head>
    <title>DAT</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/staffs?act=add">Add</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <form action="/staffs" method="get" style="display: inline" class="form-inline my-2 my-lg-0">
            <input type="hidden" name="act" value="search">
            <input type="text" name="nameSearch" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit" >Search</button>
        </form>
    </div>
</nav>
<%-------Table-----------%>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Address</th>
        <th scope="col">Phone</th>
        <th scope="col">Salary</th>
        <th scope="col">Department</th>
        <th scope="col">Action</th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="i" begin = "0" end="${staffs.size()-1}">
        <tr>
            <td>${staffs.get(i).id}</td>
            <td>${staffs.get(i).name}</td>
            <td>${staffs.get(i).mail}</td>
            <td>${staffs.get(i).address}</td>
            <td>${staffs.get(i).phone}</td>
            <td>${staffs.get(i).salary}</td>
            <td>${departments.get(i).name}</td>
            <td><a class="btn btn-success" href="/staffs?act=edit&id=${s.id} ">Edit</a></td>
            <td><a class="btn btn-success" href="/staffs?act=delete&id=${s.id} ">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
