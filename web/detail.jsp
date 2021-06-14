<%-- 
    Document   : detail
    Created on : Jun 10, 2021, 12:51:26 PM
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
        <title>detail</title>
        <link rel="stylesheet" href="./css/detail.css">
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
            </div>
        </header>
        <section id="Detail">
            <c:set var="pro" value="${sessionScope.PRODUCT}"/>
            <div class="detail__image">
                <img src="./Images/${pro.image}" alt="">
            </div>
            <div class="info">
                <h3>${pro.name}</h3>
                <p>${pro.description}</p>
                <div class="code">
                    <h6>Item Code : </h6>
                    <span class="bg-warning text-white p-1">${pro.id}</span>
                </div>
                <div class="manufacturer">
                    <h6>manufacturer : </h6><span>${pro.manufacturer}</span>
                </div>
                <div class="cate">
                    <h6>category : </h6><span class="text-primary">${pro.category}</span>
                </div>
                <div class="available">
                    <h6>Availible units in stock : </h6><span>${pro.unitPrice}</span>
                </div>

                <h5>${pro.unitInStock}USD</h5>

                <form action="ViewProductController">
                    <button class="btn btn-success" name="btnAction" value=""><i class="fa fa-arrow-circle-left text-white pr-1"></i>back</button>
                </form>
                <form action="MainController">
                    <input type="hidden" name="txtID" value="${pro.id}" />
                    <button class="btn btn-warning text-white" name="btnAction" value="order"><i class="fa fa-shopping-cart text-white pr-1"></i>Order Now</button>
                </form>
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