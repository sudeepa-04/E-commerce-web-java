<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style.css">
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="loginServlet" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" placeholder="Enter your username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn">Login</button>
            <p class="extra-link">Don't have an account? 
                <a href="<%=request.getContextPath()%>/user/register.jsp">Register</a>
            </p>
        </form>
    </div>
</body>
</html>
