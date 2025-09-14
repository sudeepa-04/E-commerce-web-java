<%@ page import="java.util.*" %>
<%@ page import="com.ecommerce.model.Product" %>
<!DOCTYPE html>
<html>
<head>
    <title>Your Cart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <jsp:include page="header.jsp"/>

    <div class="container mt-4">
        <h2>Your Shopping Cart</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Name</th><th>Description</th><th>Price</th><th>Quantity</th><th>Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Laptop</td>
                    <td>High-performance laptop</td>
                    <td>₹75000</td>
                    <td>1</td>
                    <td>₹75000</td>
                </tr>
            </tbody>
        </table>
        <a href="payment.jsp" class="btn btn-success">Proceed to Payment</a>
    </div>
</body>
</html>
