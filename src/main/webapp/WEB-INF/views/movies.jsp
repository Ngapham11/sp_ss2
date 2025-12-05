<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: phuch
  Date: 12/3/2025
  Time: 11:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Movie Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container">

    <form method="get" action="" >
        <div class="form-group">
            <input type="text" name="searchTitle"  class="form-control" placeholder="Search Title" >
        </div>
        <div>
            <button type="submit" class="btn btn-primary">Search</button>
        </div>
    </form>
    <table class="table">
        <thead>
        <tr>
            <th>Id</th>
            <th>Director</th>
            <th>Rating</th>
            <th>Release Date</th>
            <th>Title</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${movies}" var="m">
            <tr>
                <td scope="row">${m.movieId}</td>
                <td>${m.director}</td>
                <td>${m.rating}</td>
                <td>${m.releaseDate}</td>
                <td>${m.title}</td>
                <td>
                    <a name="" id="" class="btn btn-primary" href="#" >Sủa</a>
                    <a name="" id="" class="btn btn-primary" href="/delete/${m.movieId}" onclick="return confirm('Bạn có chắc chắn muốn xóa không??')">Xóa</a>
                </td>
            </tr>  
        </c:forEach>
        
        </tbody>
    </table>
    <div>
        <a name="" id="" class="btn btn-primary" href="add" role="button">Thêm</a>
    </div>
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <li class="page-item disabled">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>
            <c:forEach items="${pages}" var="i">
                <li class="page-item active"><a class="page-link" href="?page=${i}">${i}</a></li>
            </c:forEach>

            <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </ul>
    </nav>
</div>


</body>
</html>


