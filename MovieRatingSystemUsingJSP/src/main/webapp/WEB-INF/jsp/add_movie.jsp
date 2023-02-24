<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: cse20-049
  Date: 21/02/2023
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADD MOVIE</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/toastr.min.js"></script>

    <style>
        body {
            align-items: center;
            background-color: ghostwhite;
            display: flex;
            justify-content: center;
            height: 100vh;
        }

        form {
            background-color: #18171f;
            border-radius: 20px;
            box-sizing: border-box;
            height: 500px;
            padding: 20px;
            width: 430px;
        }

        .title {
            color: #eee;
            font-family: sans-serif;
            font-size: 36px;
            font-weight: 600;
            margin-top: 30px;
            text-align: center;
        }

        .input-container {
            height: 50px;
            position: relative;
            width: 100%;
        }
        .ic1 {
            margin-top: 30px;
        }
        .ic2 {
            margin-top: 30px;
        }
        .ic3 {
            margin-top: 30px;
        }

        .input {
            background-color: #303245;
            border-radius: 12px;
            border: 0;
            box-sizing: border-box;
            color: #eee;
            font-size: 18px;
            height: 85%;
            padding: 4px 20px 0;
            width: 100%;
        }

        button {
            letter-spacing: 5px;
            background-color: #0099cc;;
            border-radius: 12px;
            border: 0;
            box-sizing: border-box;
            color: #eee;
            cursor: pointer;
            font-size: 18px;
            height: 50px;
            outline: 0;
            text-align: center;
            width: 100%;
            transition: all 0.1s ease 0s;
        }

        button[type="submit"]{
            margin-top: 30px;
        }
        button[type="button"]{
            margin-top: 15px;
        }

        button:hover {
            background-color: #00417a;
        }
        button:active {
            background-color: #ff0066;
        }

        span {
            color: #0099cc;
        }

        label {
            color: #0099cc;
            margin-left: 3px;
            margin-bottom: 2px;
            font-weight: bold;
            font-size: 18px;
        }

    </style>
</head>

<body>
<section>
    <form:form action="save_movie" method="post" modelAttribute="movie">
        <div class="title" style="color: #ff0066">A D D <span>M O V I E</span></div>
        <div class="input-container ic1">
            <label for="title" class="placeholder">Title</label>
            <form:input type="text" path="title" placeholder="Movie Title" class="input" id="title" required="required"/>
        </div>
        <div class="input-container ic2">
            <label for="genre" class="placeholder">Genre</label>
            <form:input type="text" path="genre" placeholder="Movie Title" class="input" id="title" required="required"/>
        </div>
        <div class="input-container ic3">
            <label for="yearOfProduction" class="placeholder">Year</label>
            <form:input type="text" path="yearOfProduction" placeholder="Movie Title" class="input" id="title" required="required"/>
        </div>
        <button type="submit">ADD</button>
        <button type="button">CLOSE</button>
    </form:form>
</section>
</body>
</html>
