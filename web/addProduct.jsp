<%-- 
    Document   : addProduct
    Created on : Jun 10, 2021, 11:56:56 AM
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
        <title>Add Product</title>
        <link rel="stylesheet" href="./css/addProduct.css">
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
                <p>Add products</p>
            </div>
            <div class="nav__cart">
                <form action="MainController">
                    <button class="btn btn-danger" name="btnAction" value="Logout">logout</button>
                </form>
            </div>
        </header>
        <section id="addProduct">
            <div class="title">
                <h3 style="color: red">Add new product</h3> 
            </div>
            <h3>${requestScope.ADD}</h3>
            <form action="MainController" class="d-flex">
                <div class="lable">
                    <label class="input__lable" for="">Product Name</label><br>
                    <label class="input__lable" for="">Unit Price</label><br>
                    <label class="input__lable" for="">Units In Stock</label><br>
                    <label class="input__lable" for="">Description</label><br>
                    <label class="input__lable" for="">Manufacturer</label><br>
                    <label class="input__lable" for="">Category</label><br>
                    <label class="input__lable" for="">Condition</label><br>
                    <label class="input__lable" for="">Product Image File</label>
                </div>
                <div class="input">
                    <input class="input__item" type="text" name="txtProductName">
                    <label style="color: red">${requestScope.NAME_ERROR}</label>
                    <br>
                    <input class="input__item" type="number" step="0.1" min="1" name="txtUnitPrice">
                    <label style="color: red">${requestScope.PRICE_ERROR}</label><br>
                    <input class="input__item" type="number" min="1" value="0" name="txtUnitInStock">
                    <label style="color: red">${requestScope.STOCK_ERROR}</label><br>
                    <textarea class="input__item" name="txtDescription" id="" cols="30" rows="2"></textarea>
                    <label style="color: red">${requestScope.DESCRIPTION_ERROR}</label><br>
                    <input class="input__item" type="text" name="txtManufacturer" id="">
                    <label style="color: red">${requestScope.MANUFACTURER_ERROR}</label><br>
                    <input class="input__item" type="text" name="txtCategory">
                    <label style="color: red">${requestScope.CATEGORY_ERROR}</label><br>
                    <input class="input__item" type="radio" name="txtCondition" value="New">
                    <label class="input__item" for="">New</label>
                    <input class="input__item" type="radio" name="txtCondition" value="Old">
                    <label class="input__item" for="">Old</label>
                    <input class="input__item" type="radio" name="txtCondition" value="Refurbished">
                    <label class="input__item" for="">Refurbished</label>
                    <label style="color: red">${requestScope.CONDITION_ERROR}</label><br>
                    <input name="txtImage" class="input__item" type="file">
                    <label style="color: red">${requestScope.IMAGE_ERROR}</label><br>
                    <button class="btn btn-primary" type="submit" name="btnAction" value="AddProduct">Add Product</button>
                </div>
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