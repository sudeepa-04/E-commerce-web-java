<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession sessionObj = request.getSession(false);
    String userName = (sessionObj != null) ? (String) sessionObj.getAttribute("userName") : null;
%>

<div class="navbar">
    <a href="<%=request.getContextPath()%>/index.jsp" class="nav-link">Home</a>
    <% if (userName == null) { %>
        <a href="<%=request.getContextPath()%>/user/login.jsp" class="nav-link">Login</a>
        <a href="<%=request.getContextPath()%>/user/register.jsp" class="nav-link">Register</a>
    <% } else { %>
        <span class="welcome">Welcome, <%= userName %></span>
        <a href="<%=request.getContextPath()%>/cart.jsp" class="nav-link">Cart</a>
        <a href="<%=request.getContextPath()%>/user/logout" class="nav-link">Logout</a>
    <% } %>
</div>
