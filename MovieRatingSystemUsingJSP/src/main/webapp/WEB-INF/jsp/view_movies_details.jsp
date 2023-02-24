<%--
  Created by IntelliJ IDEA.
  User: cse20-049
  Date: 21/02/2023
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>MOVIES DETAILS</title>
    <style>
        body {
            margin: 0;
            background-color: #18171f;
            font-family: sans-serif;
            font-weight: 100;
        }

        .container {
            position: absolute;
            top: 20%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        table {
            width: 1300px;
            box-shadow: 0 0 10px rgb(47, 79, 103);
            background: white;
        }

        td,th {
            text-align: center;
            padding: 10px 48px;
        }

        thead, tr {
            background-color: #9a0033;
            color: white;
        }
        thead, td {
            background-color: #18171f;
            color: #0099cc;
        }

        span {
            color: #0099cc;
        }

        button, a {
            letter-spacing: 2px;
            background-color: #0099cc;;
            border-radius: 8px;
            border: 0;
            box-sizing: border-box;
            color: #eee;
            cursor: pointer;
            font-size: 18px;
            height: 30px;
            outline: 0;
            text-align: center;
            width: 40%;
            transition: all 0.1s ease 0s;
        }
        button:hover, a:hover {
            background-color: #00417a;
        }
        button:active, a:active {
            background-color: #ff0066;
        }
    </style>
</head>

<body>
<div class="container">
    <h1 style="color: #ff0066; text-align: center">M O V I E <span>D E T A I L S</span></h1>
    <form:form>
        <table>
            <thead>
            <tr>
                <th>MOVIE ID</th>
                <th>TITLE</th>
                <th>GENRE</th>
                <th>YEAR OF PRODUCTION</th>
                <th>ACTIONS</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="movie" items="${moviesList}">
                <tr>
                    <td>${movie.movieID}</td>
                    <td>${movie.title}</td>
                    <td>${movie.genre}</td>
                    <td>${movie.yearOfProduction}</td>
                    <td>
                        <a href="/update_movie/${movie.movieID}">UPDATE</a>
                        <a href="/delete_movie/${movie.movieID}">DELETE</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </form:form>
</div>
</body>
</html>
