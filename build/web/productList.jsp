<%-- 
    Document   : productList
    Created on : Jun 10, 2021, 9:50:55 PM
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
        <title>Document</title>
        <link rel="stylesheet" href="./css/productList.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
              integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link
            href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
            rel="stylesheet">
    </head>

    <body>

        <header>
            <div class="nav__top">
                <h1>Products</h1>
                <p>All the available product in out store</p>
            </div>
            <div class="nav__cart">
                <form action="cart.jsp">
                    <button><i class="fa fa-shopping-cart"></i> View Cart</button>
                </form>
            </div>
        </header>
        <section id="product">
            <h3 style="red">${requestScope.ADD}</h3>
            <div class="container-flute">
                <div class="row">
                    <c:forEach var="item" items="${sessionScope.LIST}">
                        <div class="col-3">
                            <div class="item">
                                <h4>${item.name}</h4>
                                <img src="./Images/${item.image}" height="150px" alt="">
                                <p>${item.description}</p>
                                <h6>${item.unitPrice} USD</h6>
                                <h6>${item.unitInStock} units stock</h6>
                                <form action="MainController">
                                    <input type="hidden" name="txtID" value="${item.id}" />
                                    <button class="btn btn-primary" name="btnAction" value="detail"><i class="fa fa-exclamation-circle"
                                                                                                       style="color: white;"></i>Detail</button>
                                    <button style="color: white;" class="btn btn-warning" name="btnAction" value="order"><i class="fa fa-shopping-cart"
                                                                                                                            style="color: white;"></i>Order
                                        now</button>
                                </form>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>



        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
        </script>
    </body>

</html>