<%-- 
    Document   : index
    Created on : Jun 10, 2021, 11:19:12 AM
    Author     : Ray Khum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="./css/index.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
            rel="stylesheet">
    </head>

    <body>
        <header>
            <h1>Mobile Store</h1>
        </header>
        <footer>
            <form action="MainController">
                <div class="form__header">
                    <h3>Please sign in</h3>
                </div>
                <hr>
                <div class="form__input">
                    <input type="text" name="txtUserName" placeholder="   User Name"> 
                    <label style="color: red">${requestScope.NAME}</label>
                    <br>
                    <input type="password" name="txtPassword" placeholder="   password">
                    <label style="color: red">${requestScope.PASS}</label>
                    <br>
                    <button type="submit" name="btnAction" value="Login">Login</button>
                    <label style="color: red">${requestScope.SAITK}</label>
                </div>

            </form>
        </footer>
    </body>

</html>