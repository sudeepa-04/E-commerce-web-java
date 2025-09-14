<!DOCTYPE html>
<html>
<head>
    <title>Payment Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <jsp:include page="header.jsp"/>

    <div class="container mt-5">
        <h2>Payment</h2>
        <form action="orderConfirmation.jsp" method="post" class="w-50 mx-auto">
            <div class="mb-3">
                <label class="form-label">Card Number</label>
                <input type="text" class="form-control" name="cardNumber" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Expiry Date</label>
                <input type="text" class="form-control" name="expiryDate" placeholder="MM/YY" required>
            </div>
            <div class="mb-3">
                <label class="form-label">CVV</label>
                <input type="password" class="form-control" name="cvv" required>
            </div>
            <button type="submit" class="btn btn-primary">Pay Now</button>
        </form>
    </div>
</body>
</html>
