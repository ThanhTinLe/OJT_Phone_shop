<%-- 
    Document   : cart
    Created on : Jun 10, 2021, 12:51:41 PM
    Author     : Ray Khum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>cart</title>
        <link rel="stylesheet" href="./css/cart.css">
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
                <h1>Cart</h1>
                <p>All the selected product in your cart</p>
            </div>
        </header>
        <section id="cart">
            <h3 style="color: #5cb85c">${requestScope.CHECKOUT}</h3>
            <div class="cart__button">
                <form action="ClearCartController">
                    <button onclick="return confirm('do you want to delete cart')" class="btn btn-danger">
                        <svg style="padding-top: 3px;" xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                             fill="currentColor" class="bi bi-x-circle-fill" viewBox="0 0 16 16">
                        <path style="color: white; padding-top: 10px;"
                              d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z" />
                        </svg><span class="text-white">Clear Cart</span></button>
                </form>

                <form action="MainController">
                    <button class="btn btn-success" name="btnAction" value="checkOut"><i class="fa fa-shopping-cart p-1 text-white"></i>Check out</i></button>
                </form>
            </div>
            <table class="table my-5">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th>Unit price</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${sessionScope.VALUE}">
                    <form action="MainController">
                        <tr>
                            <td>${item.name}</td>
                            <td>${item.unitInStock}</td>
                            <td>${item.unitPrice}</td>
                            <td>${item.unitPrice * item.unitInStock}</td>
                            <td> <button name="btnAction" value="removeItem" class="btn btn-danger"nclick="return confirm('do you want to delete this item')"><i class="fa fa-times text-white"></i> Remove</button></td>
                        </tr>
                        <input type="hidden" name="txtID" value="${item.id}" />
                    </form>

                </c:forEach>

                </tbody>
            </table>
            <form action="ViewProductController">
                <button class="btn btn-success"><i class="fa fa-arrow-circle-left text-white pr-1"></i>continue
                    shopping</button>
            </form>

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