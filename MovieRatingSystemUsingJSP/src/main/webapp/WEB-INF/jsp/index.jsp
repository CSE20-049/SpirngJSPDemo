<%--
  Created by IntelliJ IDEA.
  User: cse20-049
  Date: 23/02/2023
  Time: 08:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MAIN MENU</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        @import url('https://fonts.googleapis.com/css?family=Signika:500');

        * {
            padding: 0;
            margin:  0;
            box-sizing: border-box;
            font-family: "Signika", sans-serif;
        }

        section {
            background-color: #101010;
            background-size: cover;
            height: 100vh;
            color: white;
        }
        .container{
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 100px 0;
            flex-wrap: wrap;
        }
        .container .box{
            background: black;
            border: 4px solid;
            border-image:1 linear-gradient(55deg,#03a9f4,#ff0058);
            position: relative;
            width: 320px;
            height: 400px;
            margin: 20px 30px;
            transition: 0.2s;
        }
        .container .box:hover{
            border-image:1 linear-gradient(60deg,#ff0058,#03a9f4);
            transform: scale(1.02)translateY(-30px);
            cursor: pointer;
        }
        .container .box .box-content{
            margin-top: 150px;
            text-align: center;
            align-items: center;
        }
        .container .box .box-content h3 {
            margin-top: 180px;
            font-size: 20px;
            letter-spacing: 2px;
            font-family: "Verdana Pro", sans-serif;
            font-weight: bolder;
        }

    </style>
</head>

<body>
<section>
    <div class="container">
        <div class="box" onclick="location.href='${pageContext.request.contextPath}/add_movie'">
            <span></span>
            <div class="box-content">
                <h1>ADD MOVIE</h1>
            </div>
        </div>
        <div class="box" onclick="location.href='${pageContext.request.contextPath}/view_movies_details'">
            <span></span>
            <div class="box-content">
                <h1>MOVIES DETAILS</h1>
            </div>
        </div>
    </div>
</section>
</body>
</html>
