<%--
  Created by IntelliJ IDEA.
  User: phuch
  Date: 12/4/2025
  Time: 12:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <form method="post" action="save" >
        <div class="form-group">
            <label for=""></label>
            <input type="hidden" name="movieId" id="" class="form-control">
        </div>
        <div class="form-group">
            <label for="">Director</label>
            <input type="text" name="director" id="" class="form-control">
        </div>
        <div class="form-group">
            <label for="">Rating</label>
            <input type="number" name="rating" id="" class="form-control">
        </div>
        <div class="form-group">
            <label for="">Release Date</label>
            <input type="date" name="releaseDate" id="" class="form-control">
        </div>
        <div class="form-group">
            <label for="">Title</label>
            <input type="text" name="title" id="" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>
</div>


</body>
</html>


