<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.ecommerce.model.Product" %>
<%@ page import="java.util.List" %>

<jsp:include page="header.jsp" />

<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body class="dark-theme">

<div class="container">
    <h2>Available Products</h2>

    <table class="product-table">
        <tr>
            <th>Image</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price (₹)</th>
            <th>Stock</th>
            <th>Action</th>
        </tr>

        <%
            List<Product> products = (List<Product>) request.getAttribute("products");
            if (products != null && !products.isEmpty()) {
                for (Product p : products) {
        %>
        <tr>
            <td><div class="img-placeholder">No Image</div></td>
            <td><%= p.getName() %></td>
            <td><%= p.getDescription() %></td>
            <td><%= p.getPrice() %></td>
            <td><%= p.getStock() %></td>
            <td>
                <a href="productdetails?id=<%= p.getId() %>" class="btn">View</a>
                <a href="cart?add=<%= p.getId() %>" class="btn">Add to Cart</a>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
</div>

</body>
</html>
