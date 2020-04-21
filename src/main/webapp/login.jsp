<%--
  Created by IntelliJ IDEA.
  User: guillermod
  Date: 4/21/20
  Time: 12:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("admin") && password.equals("password")) {
            response.sendRedirect("/profile");
        }
    }
%>
<html>
<head>
    <title>Login</title>
    <%@include file="partials/head.jsp" %>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <title></title>
</head>
<body>
<%--<%@include file="partials/head.jsp"%>--%>
<%@include file="partials/navbar.jsp" %>

<%--<form action="profile.jsp" method="post">--%>
<%--    <div class="container">--%>
<%--        <label for="username"><b>Username</b></label>--%>
<%--        <label>--%>
<%--            <input type="text" placeholder="Enter Username" name="username" required>--%>
<%--        </label>--%>

<%--        <label for="password"><b>Password</b></label>--%>
<%--        <label>--%>
<%--            <input type="password" placeholder="Enter Password" name="psw" required>--%>
<%--        </label>--%>

<%--        <button type="submit">Login</button>--%>
<%--    </div>--%>
<%--</form>--%>

<%--    ****Solution****    --%>
<%--<%--%>
<%--    String username = request.getParameter("username");--%>
<%--    String password = request.getParameter("password");--%>
<%--    if (username != null && username.equals("admin") && password != null && password.equals("password"))--%>
<%--        response.sendRedirect("profile.jsp?username=" + username);--%>
<%--%>--%>

<form action="login.jsp" method="POST">
    <label for="username">Username</label>
    <input type="text" name="username" id="username">
    <label for="password">Password</label>
    <input type="password" name="password" id="password">
    <button type="submit">Log In</button>
</form>


<jsp:include page="partials/navbar.jsp" />
<div class="container">
    <h1>Please Log In</h1>
    <form action="/login.jsp" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>